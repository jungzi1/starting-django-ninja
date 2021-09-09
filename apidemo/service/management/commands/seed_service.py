import random
import datetime

from faker import Faker

from django.core.management.base import BaseCommand 

from service.models import Service, ServiceCategory
from faker import Faker


class Command(BaseCommand): 
    help = 'This command creates users' 
    
    def add_arguments(self, parser): 
        parser.add_argument('--number')

    def handle(self, *args, **options):        
        faker = Faker()
        number = int(options.get('number'))
        category = ServiceCategory.objects.all()
        count = 0
        url = 'https://images.unsplash.com/photo-1533794299596-8e62c88ff975?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
        while True:
            for i in range(number):
                service_name = faker.bs()
                if Service.objects.filter(name=service_name).exists():
                    pass
                else:
                    Service.objects.create(
                        category = random.choice(category),
                        name = service_name,
                        icon_url = url,
                    )
                    count += 1
            if number == count:
                    break
        self.stdout.write(self.style.SUCCESS(f'{number} users created!'))
