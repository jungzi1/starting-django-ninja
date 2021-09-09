from faker import Faker

from django.core.management.base import BaseCommand 
import datetime
import random

import datetime

from user.models import User, Gender, Provider, Requester, Company, UserType
from faker import Faker
                
class Command(BaseCommand): 
    help = 'This command creates users' 
    
    def add_arguments(self, parser): 
        parser.add_argument( '--number', default=1, type=int, help="How many Requester/Provider do you want to create?" )

    def handle(self, *args, **options):
        sex = Gender.objects.all()
        company = Company.objects.all()
        type = UserType.objects.all()
        faker = Faker(["ko_KR"])
        number = options.get('number') 
        count = 0
        Faker.seed(0)
        while True:
            email = faker.email()
            contact = faker.numerify(text ='111-####-####')
            if User.objects.filter(email=email).exists() or User.objects.filter(contact=contact).exists():
                pass
            else:
                Provider.objects.create_user(                    
                    email = email,
                    name = faker.name(),
                    contact = contact,
                    company = random.choice(company),
                    birth_date = faker.date_time_between(start_date=datetime.date(year=1970, month=1, day=1), end_date='+30y'),
                    gender = random.choice(sex),
                    created_at = faker.date_time_between(start_date=datetime.date(year=2019, month=1, day=1), end_date='+2y'),
                    user_type = random.choice(type).name
                )

            email = faker.email()
            contact = faker.numerify(text ='111-####-####')
            if User.objects.filter(email=email).exists() or User.objects.filter(contact=contact).exists():
                pass
            else:    
                Requester.objects.create_user(                    
                    email = email,
                    name = faker.name(),
                    contact = contact,
                    company = random.choice(company),
                    birth_date = faker.date_time_between(start_date=datetime.date(year=1970, month=1, day=1), end_date='+30y'),
                    gender = random.choice(sex),
                    created_at = faker.date_time_between(start_date=datetime.date(year=2019, month=1, day=1), end_date='+2y'),
                    user_type = random.choice(type).name
                )

                count += 1
            if number == count:
                break

        self.stdout.write(self.style.SUCCESS(f'{number} users created!'))
