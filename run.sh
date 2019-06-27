#!/bin/sh


rm ./output/*.tsv

echo "exporting"
echo "	country"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < country.sql > output/country.tsv

echo "	region"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < region.sql > output/region.tsv

echo "	district"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < district.sql > output/district.tsv

echo "	submission_latest_vw"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < submission_latest_vw.sql > output/submission_latest_vw.tsv

echo "	data_disease_lf"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_lf.sql > output/data_disease_lf.tsv

echo "	data_disease_lf_tx_indicators"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_lf_tx_indicators.sql > output/data_disease_lf_tx_indicators.tsv

echo "	data_disease_sth"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_sth.sql > output/data_disease_sth.tsv

echo "	data_disease_sth_tx_indicators"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_sth_tx_indicators.sql > output/data_disease_sth_tx_indicators.tsv

echo "	data_disease_trachoma"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_trachoma.sql > output/data_disease_trachoma.tsv

echo "	data_disease_tr_tx_indicators"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_tr_tx_indicators.sql > output/data_disease_tr_tx_indicators.tsv

echo "	data_disease_oncho"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_oncho.sql > output/data_disease_oncho.tsv

echo "	data_disease_demography"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_demography.sql > output/data_disease_demography.tsv

---
echo "	data_disease_schisto"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_schisto.sql > output/data_disease_schisto.tsv

echo "	data_disease_sch_tx_indicators"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_sch_tx_indicators.sql > output/data_disease_sch_tx_indicators.tsv

echo "	data_disease_tx_indicators"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_disease_tx_indicators.sql > output/data_disease_tx_indicators.tsv

echo "	data_program_me"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_program_me.sql > output/data_program_me.tsv

echo "	data_program_mapping"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_program_mapping.sql > output/data_program_mapping.tsv

echo "	data_program_training"
mysql --defaults-extra-file=creds.txt -h production.c6u52zchwjde.us-east-1.rds.amazonaws.com  ntd --default-character-set=utf8mb4 --batch --raw < data_program_training.sql > output/data_program_training.tsv



+zip -r ntd_data.zip output
