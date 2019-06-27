SELECT data_disease_sth.* FROM data_disease_sth
INNER JOIN data_files df ON data_disease_sth.data_files_id = df.data_files_id
INNER JOIN submission_latest_vw ON submission_latest_vw.submission_id = df.submission_id;
