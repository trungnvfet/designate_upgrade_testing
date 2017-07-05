import json

from config import *
from utils import *
from get_auth import TOKEN

##################
##### CONFIG #####
##################

DOMAIN_ID = "e5c1a08e-2337-4a6c-b493-a9d1ac25e332"

# Create image data: use POST and PUT method.
# NOTE: put_data  and put_url will be formatted later
VIP = '10.164.178.46'
url = 'http://{}:9001/v1/domains'.format(VIP)

token_headers = {
    'X-Auth-Token': TOKEN,
    'Content-Type': 'application/json'
}

# Get domains for DELETE
future = send_request(url, 'GET', headers=token_headers)
result = future.result().content
result = json.loads(result)
list_domains = result.get("domains")
list_domains = [domain for domain in list_domains if "making" in domain.get('name')]

print(list_domains)

if __name__ == '__main__':
    i = 0
    n = len(list_domains)
    while continue_test:
        time.sleep(0.3)
        # Create VM
        post_data = {
            "email": "abc@gmail.com",
            "name": "trungnv{}.vn.".format(i)
        }
        send_request(url, 'POST',
                     headers=token_headers,
                     data=json.JSONEncoder().encode(post_data))

        # Get and delete an VM
        domain = list_domains[int(i % n)]
        domain_url = "http://{}:9001/v1/domains/{}".format(VIP, domain.get('id'))
        # Delete VM
        send_request(domain_url, 'DELETE', headers=token_headers)

        # Update VM name
        i += 1
        update_data = {"email": "new_email_{}@gmail.com".format(i)}
        update_url = "http://{}:9001/v1/domains/{}".format(VIP, DOMAIN_ID)
        send_request(update_url, 'GET', headers=token_headers)
        send_request(update_url, 'PUT',
                     headers=token_headers, data=json.JSONEncoder().encode(update_data))
