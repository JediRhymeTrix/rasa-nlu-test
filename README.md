# rasa-nlu-test
testing rasa-nlu for a bot


Commands:

  Run server: docker run -p 5000:5000 --name rasa -v <path>\rasa-nlu-test\projects:/app/projects -v <path>\rasa-nlu-test\d   
  ata:/app/data  rasa/rasa_nlu:latest-full     
  Train: python -m rasa_nlu.train -c sample_configs/config_spacy_duckling.json   
  Trainer: rasa-nlu-trainer --source <path>\rasa-nlu-t   
  est\data\examples\rasa\demo-rasa.json   
