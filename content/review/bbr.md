+++
date = "2017-02-16T08:32:13-05:00"
title = "BBR: Congestion-based Congestion Control"
type = "post"
categories = ["review"]
tags = ["papers","computer networks", "congestion control", "fairness", "architecture", "seminar"]

+++

## Paper Title
BBR: Congestion-based Congestion Control

## Author(s)
Neal Cardwell, Yuchung Cheng, C. Stephen Gunn, Soheil Hassas Yeganeh, Van Jacobson

## Date
October 2016. Appeared in both:

1. September-October 2016. ACM Queue - Network Congestion Vol. 14 No. 5
2. February 2017. Communications of the ACM Volume 60 Issue 2

<!--more-->

## DOI/Authoritative Link to Paper
- ACM Queue: [doi:10.1145/3012426.3022184](http://dl.acm.org/citation.cfm?id=3022184)
- CACM: [doi:10.1145/3009824](https://doi.org/10.1145/3009824)
- [Listing on Research at Google](https://research.google.com/pubs/pub45646.html)

## Novel Idea / Main Result(s)
The paper describes how by identifying the core parameters in congestion control -- propagation time of the physical medium and bottleneck bandwidth -- the authors were able to come up with a new congestion control mechanism (BBR) that is refreshingly simple and performs better in most cases in both bandwidths and latency.

## Impact
After reading the [last](/review/analysis-and-simulation-of-a-fair-queueing-algorithm/) [two](/review/flow-rate-fairness-dismantling-a-religion/) papers, I was surprised how advanced math and non-intuitive solutions had taken over the world of network management at Internet scale. This paper's attempt to go to the very bottom of the problem by relooking at Kleinrock's formal model of congestion and utilizing modern control theory to come up with a simple state machine as a solution is both refreshing and relaxing. The experiments performed at the Google scale over a span of services and time periods validate their reasoning and ideas. I feel comfortable to say that this paper's contributions hold huge potential for the future of Internet architecture.

## Evidence
The authors have used a variety of analyses to present convincing arguments to validate their proposal -- simple intuitive reasoning about the problem of congestion conforming to (classical?) research in the formal theory of communications (Kleinrock); mathematical but fairly intuitive linear programming analysis; multiple comparisons with the behavior of a previous well-optimized TCP implementation (CUBIC) and finally and perhaps most importantly experiments done on both Google's WAN and YouTube which provide real-world insights and strong evidence in their favor.

## Reproducibility
Yes! The implementation is merged in Linux kernel version 4.9.

## Question
I really liked how, once again, the difference between a spec (TCP) and its various implementations is illustrated in this paper and how end-to-end argument is still relevant even after we have seen so many violations in existing Internet infrastructure. I would like to brainstorm about where else rethinking old ideas from scratch and reducing the problems to their very core has a potential of significant improvements.

## Criticism
I would have loved to see some graphs with mix flows of some existing TCP implementation and their interaction with BBR flows.

## Ideas for further work
Given how this paper reduced the problem of congestion control to its fundamental core (RTprop and BtlBw) and is designed to stabilize while keeping the queues empty, I am wondering how many complicated queue management solutions (such as the one proposed in the previous paper we read from Briscoe) may not be required anymore and perhaps should be reevaluated.

<hr />

Review Template Credits:
[Prof. Rodrigo Fonseca](http://cs.brown.edu/courses/csci2950-u/s14/review.html)
