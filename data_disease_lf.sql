SELECT data_disease_lf.* FROM data_disease_lf
INNER JOIN data_files df ON data_disease_lf.data_files_id = df.data_files_id
INNER JOIN submission_latest_vw ON submission_latest_vw.submission_id = df.submission_id;
