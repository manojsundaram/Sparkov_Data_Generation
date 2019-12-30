#!/bin/bash

#rm -rf /data /data2
mkdir -p /data /data2
#python3 datagen_customer.py 10000 4444 profiles/main_config.json >> /data/customers.csv

python3 datagen_transaction.py /data/customers.csv ./profiles/leftovers.json 12-30-2018 12-30-2019 >> /data2/leftovers.csv &
python3 datagen_transaction.py /data/customers.csv ./profiles/adults_2550_female_rural.json 12-30-2018 12-30-2019 >> /data2/adults_2550_female_rural.json.csv &
python3 datagen_transaction.py /data/customers.csv ./profiles/adults_2550_female_urban.json 12-30-2018 12-30-2019 >> /data2/adults_2550_female_urban.json.csv &
python3 datagen_transaction.py /data/customers.csv ./profiles/adults_2550_male_rural.json 12-30-2018 12-30-2019 >> /data2/adults_2550_male_rural.csv &
python3 datagen_transaction.py /data/customers.csv ./profiles/adults_2550_male_urban.json 12-30-2018 12-30-2019 >> /data2/adults_2550_male_urban.csv &
python3 datagen_transaction.py /data/customers.csv ./profiles/adults_50up_female_rural.json 12-30-2018 12-30-2019 >> /data2/adults_50up_female_rural.csv &
python3 datagen_transaction.py /data/customers.csv ./profiles/adults_50up_female_urban.json 12-30-2018 12-30-2019 >> /data2/adults_50up_female_urban.csv &
python3 datagen_transaction.py /data/customers.csv ./profiles/adults_50up_male_rural.json 12-30-2018 12-30-2019 >> /data2/adults_50up_male_rural.csv &
python3 datagen_transaction.py /data/customers.csv ./profiles/adults_50up_male_urban.json 12-30-2018 12-30-2019 >> /data2/adults_50up_male_urban.csv &

exit 0

