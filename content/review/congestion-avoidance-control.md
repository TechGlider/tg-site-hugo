+++
date = "2017-02-01T22:43:36-05:00"
title = "Congestion Avoidance and Control"
categories = ["review"]
tags = ["papers","computer networks", "TCP", "protocols", "congestion control", "SIGCOMM", "communications", "seminar"]
type = "post"

+++

## Paper Title
Congestion Avoidance and Control

## Author(s)
Van Jacobson and Michael J Karels

## Date
November 1988 (Slightly revised version; originally published in Symposium proceedings on Communications architectures and protocols (SIGCOMM '88))

<!--more-->

## DOI/Authoritative Link to Paper
- [doi:10.1145/52324.52356](http://dx.doi.org/10.1145/52324.52356)
- [Revised version that I read](https://www.cs.princeton.edu/courses/archive/fall06/cos561/papers/tcp.pdf)

## Novel Idea / Main Result(s)
The paper describes the congestion-related problems observed in the erstwhile TCP variant and reports on the algorithms introduced to tackle those problems.

## Impact
Given we are still reading/talking about this paper after almost three decades, it is fair to say the paper has had a lasting impact. Recalling the congestion control and avoidance concepts studied in [CS168](https://cs.brown.edu/courses/csci1680/f16/), I see that most of those basic ideas originated here in this paper and its references.

## Evidence
Both intuitive/mathematical and empirical analysis is described. I especially like the effectiveness of the diagrams in Fig 1 and 2. The charts are all drawn from experiments done between LBL and UCB in a real setting and hence are quite convincing.

## Reproducibility
Yes, the description is enough, with a lot of work and resources

## Question
The authors talk about possible change in some of their results when the Internet grows large (like the introduction of a third term in the Taylor series on pg. 9) at multiple points. I would like to see what all has changed and what has stood the test of time.

## Criticism
NA

## Ideas for further work
I found the connections to queueing theory/control theory and even the conservation principle of liquid flow as an analogy to network flow really interesting. It also reminded me of [Lamport's time, clocks, ordering paper](/review/time-clocks-and-ordering-of-events-in-a-distributed-system/) where he was able to bring in ideas from relativity into computing. These connections, in general, suggest how sometimes well-established ideas from another field can be applied to one's field and why interdisciplinary research makes good sense.


<hr />

Review Template Credits:
[Prof. Rodrigo Fonseca](http://cs.brown.edu/courses/csci2950-u/s14/review.html)

### Note
1. I am taking a graduate seminar this semester at Brown: [Special Topics on Networking and Distributed Systems](http://cs.brown.edu/courses/csci2950-u/s17/). This and most of the following paper reviews until early-May will be my reviews submitted for this seminar with some minor editing.
2. This review posted here on Feb 9, 2017
