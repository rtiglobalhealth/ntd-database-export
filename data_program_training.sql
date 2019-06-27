SELECT * FROM data_program_training
INNER JOIN data_files df ON data_program_training.data_files_id = df.data_files_id
INNER JOIN submission_latest_vw ON submission_latest_vw.submission_id = df.submission_id;