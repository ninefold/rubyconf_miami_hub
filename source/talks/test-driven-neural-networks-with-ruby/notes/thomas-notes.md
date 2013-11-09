---
author: Thomas Ingram
---

## Test Driven Neural Networks

[Matthew Kirk](http://modulus7.com/rubyconf) ([@mjkirk](https://twitter.com/mjkirk))


Neural networks are the sledge hammer of functional relationships.

Build the next Pandora or *working* spam filter.


### Big Data Language

* Java
* Python
* R
* Julia
* Clojure
* Matlab

Ruby was not created for complex math, but Ruby was made for expressiveness and happiness.


### Today

* what feed-forward neural networks are
* classify strings to languages using networks
* tdd
* demonstration


### Four Ideas

input layer - that which we are modeling; anything between 0 and 1
hidden layer - 2/3 * input layer + output count (== hidden layer neurons)
output layer
neuron - takes two inputs and weigh together to create single output (also between 0 and 1)


### Activation Functions

sigmoid - learning curve
elliott - learning curve
gaussian - bell curve
linear - line
threshold - yes or no
sine - periodic
cosine - periodic


### Training Algorithm

* quickprop
* rprop - use this one
* back propagation


### Modeling

data collection - (for instance loading many translations of the Bible)

vectors:
* character count distribution
* stems
* two others... (slides should be available at link above)
