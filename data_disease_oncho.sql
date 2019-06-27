SELECT data_disease_oncho.* FROM data_disease_oncho
INNER JOIN data_files df ON data_disease_oncho.data_files_id = df.data_files_id
INNER JOIN submission_latest_vw ON submission_latest_vw.submission_id = df.submission_id;
