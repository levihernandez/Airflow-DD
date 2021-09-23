import airflow
from airflow import models, settings
from airflow.contrib.auth.backends.password_auth import PasswordUser

user = PasswordUser(models.User())
user.username = 'apiuser'
user.email = 'apiuser@example.com'
user.password = 'apipass'
session = settings.Session()
session.add(user)
session.commit()
session.close()
exit()
