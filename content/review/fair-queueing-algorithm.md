+++
categories = ["review"]
date = "2017-02-14T07:12:31-05:00"
title = "Analysis and Simulation of a Fair Queueing Algorithm"
tags = ["papers","computer networks", "congestion control", "fairness", "SIGCOMM", "communications", "seminar"]
type = "post"

+++

## Paper Title
Analysis and Simulation of a Fair Queueing Algorithm

## Author(s)
Alan Demers, Srinivasan Keshav and Scott Shenker

## Date
September 1989. Symposium proceedings on Communications architectures & protocols (SIGCOMM '89).

<!--more-->

## DOI/Authoritative Link to Paper
- [doi:10.1145/75246.75248](http://dx.doi.org/10.1145/75246.75248)
- [Alternate single column format](https://cseweb.ucsd.edu/classes/wi01/cse222/papers/demers-fq-ire90.pdf)

## Novel Idea / Main Result(s)
The paper presents an improved version of the fair queueing algorithm first proposed by Nagle, discusses limitations of congestion control with FCFS queuing, presents mathematical foundation behind their algorithm and finally, discusses the performance of this new algorithm in various real world scenarios with the help of simulations.

## Impact
This was the first time that performance implications of a fair queuing algorithm were studied in detail and published. Network scheduling / queue management became an active area of networks research with several other algorithms proposed later.

Further, this paper identifies flow (called conversations in this paper) as a good criterion for bandwidth & buffer allocations, which has become a standard concept in the Software-Defined Networking research.

## Evidence
The authors come up with a methodology to emulate bit-wise round robin scheduling (which is intuitive to fairness but impractical for implementation) and provide both rigorous mathematical analysis and empirical analysis (with the help of network simulation experiments in various scenario) to justify their results. The evidence is, hence, quite convincing.

## Reproducibility
Yes, the description is enough, with a lot of work and resources

## Question
Primarily, I wonder, (as the authors point out in conclusion) whether technology has matured enough in past 30 years that we can have a true implementation of a fair queuing (for a reasonable definition of "fair")?

## Criticism
I found the mathematics covered in §2.3 fairly hard to follow and perhaps it could have used further explanation. This is in contrast to the scenario diagrams presented in a later section which were both self-descriptive and had major observations pointed out in prose.

## Ideas for further work
NA


<hr />

Review Template Credits:
[Prof. Rodrigo Fonseca](http://cs.brown.edu/courses/csci2950-u/s14/review.html)
