[![INFORMS Journal on Computing Logo](https://INFORMSJoC.github.io/logos/INFORMS_Journal_on_Computing_Header.jpg)](https://pubsonline.informs.org/journal/ijoc)

# Federated Latest Averaging

![Algorithm Overview](docs/overview.png)

This archive is distributed in association with the [INFORMS Journal on
Computing](https://pubsonline.informs.org/journal/ijoc) under the [MIT License](LICENSE).

The software and data in this repository are a snapshot of the software and data
that were used in the research reported on in the paper 
[Federated Optimization under Intermittent Client Availability](https://doi.org/10.1287/ijoc.2022.0057) by Yikai Yan. 
The snapshot is based on 
[7ffc5668bec340f16952ed374e1fd717c2810752](https://github.com/mikudehuane/FedLaAvg/commit/7ffc5668bec340f16952ed374e1fd717c2810752) 
in the development repository. 

**Important: This code is being developed on an on-going basis at 
https://github.com/mikudehuane/FedLaAvg. Please go there if you would like to
get a more recent version or would like support**

## Cite

To cite the contents of this repository, please cite both the paper and this repo, using their respective DOIs.

https://doi.org/10.1287/ijoc.2022.0057

https://doi.org/10.1287/ijoc.2022.0057.cd

Below is the BibTex for citing this snapshot of the respoitory.

```
@article{CacheTest,
  author =        {Yikai Yan and
                   Chaoyue Niu and
                   Yucheng Ding and
                   Zhenzhe Zheng and
                   Shaojie Tang and
                   Qinya Li and
                   Fan Wu and
                   Chengfei Lyu and
                   Yanghe Feng and
                   Guihai Chen},
  publisher =     {INFORMS Journal on Computing},
  title =         {{Federated Optimization under Intermittent Client Availability}},
  year =          {2023},
  doi =           {10.1287/ijoc.2022.0057.cd},
  url =           {https://github.com/INFORMSJoC/2022.0057},
}  
```

## Building

In Linux, to initialize the project, please type the following commands in your shell.
```shell script
# install packages
conda create -n FedLaAvg python==3.6.9
conda activate FedLaAvg
pip install -r requirements.txt

# configuring project
echo -e "use_cuda = False\nproject_dir = \"$(pwd)\"" > src/config.py

# generating initial model
mkdir cache data
python src/train/model.py

# download glove embedding
mkdir -p models/glove/
wget -P models/glove/ http://nlp.stanford.edu/data/glove.twitter.27B.zip
unzip -d models/glove/ models/glove/glove.twitter.27B.zip

# download sentiment dataset
mkdir -p raw_data/Sentiment140
wget -P raw_data/Sentiment140/ http://cs.stanford.edu/people/alecmgo/trainingandtestdata.zip
unzip -d raw_data/Sentiment140/ raw_data/Sentiment140/trainingandtestdata.zip
```

## Replicating
In the root directory, run the scripts in [scripts](scripts) to reproduce the results in the paper.
For example: `sh scripts/MNIST-FedAvg.sh`.

Run `python src/train/server.py -h` to see the help if you want to try other configurations.

## Ongoing Development

The code is being developed on an ongoing basis at the authors [Github site](https://github.com/mikudehuane/FedLaAvg).
