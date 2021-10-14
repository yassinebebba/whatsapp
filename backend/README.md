# Django

## Setup (Linux)

### Django

> in your terminal enter:

```
pip -m venv venv
pip install -r requirements.txt
```

> cd to where manager.py is

```
python3 manage.py makemigrations
python3 manage.py migrate
```

> export your Twilio API credentials (NOT PERMANENT)

```
echo "export TWILIO_ACCOUNT_SID='your_account_sid'" | sudo tee -a twilio.env
echo "export TWILIO_AUTH_TOKEN='your_auth_token'" | sudo tee -a twilio.env
echo "export TWILIO_PHONE_NUMBER='your_valid_twilio_phone_number'" | sudo tee -a twilio.env
source ./twilio.env OR . ./twilio.env 
```

> for permanent export in Linux (OPTIONAL)

```
cd /etc/profile.d

create a file, example global_exports.sh

echo "export TWILIO_ACCOUNT_SID='your_account_sid'" | sudo tee -a global_exports.sh
echo "export TWILIO_AUTH_TOKEN='your_auth_token'" | sudo tee -a global_exports.sh
echo "export TWILIO_PHONE_NUMBER='your_valid_twilio_phone_number'" | sudo tee -a global_exports.sh

reboot your system or user:
source ./global_exports.sh OR . ./global_exports.sh 
```

> option: not permanent > in the same terminal session

`python3 manage.py runserver`

> option: permanent > in any terminal session

`python3 manage.py runserver`
