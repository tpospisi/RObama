# RObama

Code for Pittsburgh useR Group's RObama competition. See rules at
http://pittsburgh-user-group.github.io/RObama/

## Overview of Approach

To sample an entire speech we sample several paragraphs. To sample a
paragraph we sample several sentences.

The paragraphs are clustered into topics and for each cluster we'll
fit a separate Markov Chain model. Then the sentences are realizations
of that Markov chain.

## Tasks

TODO: Distinguish paragraph chunks from the raw text
TODO: Function to find TVD distance between paragraphs
TODO: Function to agglomeratively cluster paragraphs
TODO: Function to learn a Markov Chain from text
TODO: Function to sample from a Markov Chain
