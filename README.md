# Searching similar images by VAE

## Project Description

The source code includes a Variational Autoencoders project, which is an applied task: Web server for Searching similar images in a docker.
The VAE model was trained using the Fruits 360 dataset: A dataset of images containing fruits and vegetables. (https://www.kaggle.com/moltean/fruits)

The project has the following goals
* Design document and dataset description
* VAE Model implementation and training code providing by Jupiter Notebook
* Flask Server and HTML Frontend Client providing
* Training model from scratch by a dataset
* Compile docker and docker-compose for full architecture

## Demo

![alt text](https://raw.githubusercontent.com/adhok/Searching-Similar-Images-using-VAE/main/image_search.gif)

## Folders, files, and structure

* [Fruits 360 dataset contains 90483 original sized and resised images](./dataset/)
* [Original Fruits 360 dataset description](./dataset/fruits-360-original-size/fruits-360-original-size/readme.md)
* [Original Fruits 360 resised dataset description](./dataset/fruits-360_dataset/fruits-360/readme.md)
* [Design drafts and the additional dataset description](./design_and_dataset/deisgn_and_dataset.ipynb)
* [Model description and training log](./model/model.ipynb)
* [Dumped trained model](./model/checkpoint.pth)
* [Еhe main backend file](./server.py)
* [Embedding of each image stored in './static/img/'](./embedding.npy) 
* [This contains functions that will be used by the application to extract image embeddings.](./feature_extractor.py) 
* [This keeps a record of all the images in './static/img/'](./img_paths.json)
* [File that contains information about the UI of the app. Teamplate images locate in '.static/templates/'](./templates/index.html)
* [Contains All the images that are used to construct the embeddings as well as images wich are using in the index.html file](./static/)
* [List of libraries used for this application](./requirements.txt)
* [Docker file](./Dockerfile)
* [Docker-compose file](./docker-compose.yml)

## Running the Demo

You can run the app directly, or through docker and docker-compose.
To get the access to the web-front open `http://127.0.0.1:5000/`

```
gh repo clone galkinc/VAE-Searching-similar-images
cd VAE-Searching-similar-images
docker-compose build
docker-compose up
```

## References

* [Fruits 360 Dataset](https://www.kaggle.com/moltean/fruits)
* [Yusuke Matsui matherials](https://github.com/matsui528/sis)
* [Adhokshaja Pradeep metherials](https://github.com/adhok)
* Variational autoencoders [video by Dr Yann LeCun & Dr Alfredo Canziani](https://www.youtube.com/watch?v=7Rb4s9wNOmc&list=PLLHTzKZzVU9eaEyErdV26ikyolxOsz6mq&index=15&t=1639s)
