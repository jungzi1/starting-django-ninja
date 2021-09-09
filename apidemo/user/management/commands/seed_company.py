import random
import datetime

from faker import Faker

from django.core.management.base import BaseCommand 

from user.models import CompanyCategory, Company
from faker import Faker

company_category_list = [
    '서비스업',
    '금융/은행업',
    'IT/정보통신업',
    '판매/유통업',
    '제조/생산/화학업',
    '교육업',
    '건설업',
    '의료/제약업',
    '미디어/광고업',
    '문화/예술/디자인업',
    '기관/협회'
]

class Command(BaseCommand): 
    help = 'This command creates users' 
    
    def add_arguments(self, parser): 
        parser.add_argument('--number', default=1, type=int, help="How many users do you want to create?" )
        parser.add_argument('--category', default='y', type=str, help="Do you want to create company categories?")

    def handle(self, *args, **options):        
        faker = Faker()
        number = options.get('number') 
        category_make = options.get('category') 
        count = 0
        if category_make == 'y':
            for category_name in company_category_list:
                CompanyCategory.objects.create(name=category_name)
            self.stdout.write(self.style.SUCCESS('company categories created'))
        corp_cate = CompanyCategory.objects.all()
        while True:
            for i in range(number):
                corp_name = faker.unique.company()
                corp_contact = faker.numerify(text ='999-####-####')
                if Company.objects.filter(name=corp_name).exists() or Company.objects.filter(contact=corp_contact).exists():
                    pass
                else:
                    Company.objects.create(
                        name = corp_name,
                        company_category = random.choice(corp_cate),
                        address = Faker(['ko_KR']).address(),
                        created_at = faker.date_time_between(start_date=datetime.date(year=2019, month=1, day=1), end_date='+2y'),
                        contact = corp_contact,
                        is_active = True,
                    )
                    count += 1
            if number == count:
                    break
        self.stdout.write(self.style.SUCCESS(f'{number} users created!'))
