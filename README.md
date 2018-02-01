# rasa-nlu-test
testing rasa-nlu for a bot


### Commands:

*NOTE: To use MITIE, download https://github.com/mit-nlp/MITIE/releases/download/v0.4/MITIE-models-v0.2.tar.bz2 and extract total_word_feature_extractor.dat to data/

> **Run server:** docker run -p 5000:5000 --name rasa -v <path>\rasa-nlu-test\projects:/app/projects -v <path>\rasa-nlu-test\configs:/app/configs -v <path>\rasa-nlu-test\data:/app/data  rasa/rasa_nlu:latest-full\
**Train:** python -m rasa_nlu.train -c configs/config_mitie_duckling.json (after "docker exec -it rasa bash")\
**Trainer:** rasa-nlu-trainer --source <path>\rasa-nlu-test\data\examples\rasa\demo-rasa.json\
**Test:** endpoint - http://localhost:5000/parse method - POST body - {"q":"hello", "project": "default"} (JSON)\
