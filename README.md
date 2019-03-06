# thesis-data

This repository contains supplementary scripts and data for my thesis.
I classified the [Ten Thousand German News Articles Dataset](https://tblock.github.io/10kGNAD/) with four text classifiers. Namely a Support Vector Machine, facebook's [fastText](https://fasttext.cc) libary, a TensorFlow neuronal net and the [ULMFiT](https://arxiv.org/abs/1801.06146) method.


The scripts can be run in a [Google Colab IPython Notebook](https://colab.research.google.com).

| Classifier | View Notebook                                                                          | Run Notebook                                                                                                |
|:------------|:----------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------:|
| SVM        | [[view]](https://github.com/tblock/thesis-data/blob/master/reproduce_SVM.ipynb)        | [[run]](https://colab.research.google.com/github/tblock/thesis-data/blob/master/reproduce_SVM.ipynb)        |
| fastText   | [[view]](https://github.com/tblock/thesis-data/blob/master/reproduce_fastText.ipynb)   | [[run]](https://colab.research.google.com/github/tblock/thesis-data/blob/master/reproduce_fastText.ipynb)   |
| TensorFlow | [[view]](https://github.com/tblock/thesis-data/blob/master/reproduce_TensorFlow.ipynb) | [[run]](https://colab.research.google.com/github/tblock/thesis-data/blob/master/reproduce_TensorFlow.ipynb) |
| ULMFiT     | [[view]](https://github.com/tblock/thesis-data/blob/master/reproduce_ULMFiT.ipynb)     | [[run]](https://colab.research.google.com/github/tblock/thesis-data/blob/master/reproduce_ULMFiT.ipynb)     |


## Abstract

> Neural networks are widely used to train models in the domain of natural language processing (NLP). Recent developments, like Google’s BERT or the GPT-2 language model introduced by OpenAI, which is considered to be too dangerous to publish, make headlines. These models obtain state-of-the-art performance on NLP tasks. One task, for example, is the classification of texts by text topic. For this task, the 2018 published Universal Language Model Fine-tuning (ULMFiT) method exceeds previous approaches in classification accuracy and is considered to be extremely sample-efficient by the authors. This is shown on six English text classification datasets and the authors hope for a successful application on non-English texts. However the applicability and sample-efficiency on a German text classification dataset hasn’t been studied yet.  
The German and English languages are grammatically different. Therefore, the ULMFiT method might not classify German texts as effectively as English texts. Furthermore, the manual assembly of text classification datasets is time-consuming and expensive. Thus, sample-efficiency is an important property of text classification methods for deployment in productive environments.  
This thesis studies the applicability and the sample-effectively of the ULMFiT method on the Ten Thousand German News Article Dataset. A total of 360 text classification models are trained using the ULMFiT method, a Support Vector Machine (SVM), Facebook’s fastText library and a neural network with Google’s TensorFlow framework. The evaluation shows that the ULMFiT method is applicable, but not the most sample-efficient. Models trained with the TensorFlow framework have a higher sample-efficiency on smaller subsets and the SVM on larger subsets. Both have a significantly shorter model creation time.  
The results set the ULMFiT method in relation to other text classification methods. The ULMFiT method cannot be seen as extremely sample-efficient on the Ten Thousand German News Article Dataset. To classify similar data in practice, methods with shorter training times, such as the SVM or the TensorFlow framework, should be considered first. The dataset and the scripts are published, in particular, to be used for further studies, for example on other languages.
