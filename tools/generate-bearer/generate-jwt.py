from datetime import datetime, timedelta
import jwt # Uses pytjwt library

iat = datetime.utcnow()
exp = iat + timedelta(seconds=3600)
iss = 'email_address_of_sa'
kid = 'private_key_id'
aud = 'hostname_of_your_gateway'
jwt_payload = {"iat": iat, "exp": exp, "iss": iss, "aud": aud, "data": {"name": "John"}}
jwt_headers = {"iat": str(iat), "exp": str(exp), "iss": iss, "aud": aud}
private_key = 'RSA_certificate_in_your_private_key'


def generate_jwt():
    signed_jwt = jwt.encode(jwt_payload, private_key, algorithm='RS512')
    print(signed_jwt.decode()+'\n')


if __name__ == "__main__":
    generate_jwt()
