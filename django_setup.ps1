python -m venv venv

.\venv\Scripts\Activate

pip install -r requirements.txt

django-admin startproject myproject

cd myproject

python manage.py migrate

$superUserScript = @"
from django.contrib.auth import get_user_model
User = get_user_model()
User.objects.create_superuser('admin', 'admin@example.com', 'admin')
"@
python manage.py shell -c $superUserScript

python manage.py runserver
