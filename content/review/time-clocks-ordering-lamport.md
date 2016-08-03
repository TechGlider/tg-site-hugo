+++
categories = ["review"]
date = "2016-07-31T20:28:41-07:00"
tags = ["papers", "clock synchronization", "computer networks", "distributed systems", "multiprocess systems"]
title = "Time, Clocks, and Ordering of Events in a Distributed System"
type = "post"

+++

## Paper Title
Time, Clocks, and Ordering of Events in a Distributed System

## Author(s)
Leslie Lamport

## Date
Communications of the ACM, Volume 21 Issue 7, July 1978

<!--more-->

## DOI/Authoritative Link to Paper
- [doi:10.1145/359545.359563](http://dx.doi.org/10.1145/359545.359563)
- Section about this paper at [The Writings of Leslie Lamport](http://research.microsoft.com/en-us/um/people/lamport/pubs/pubs.html#time-clocks) has a good note about the historical context and how Lamport's understanding of special relativity led to his insights about ordering of computing events presented in this paper.

## Novel Idea
Establishing total order of events can be used to implement any distributed system in the form of a state machine.

## Main Result(s)
Happened before relationship within a system establishes a partial order of events in the system, but it is not sufficient to say which event among two occurred first, hence the need for a total order. Lamport presents an algorithm to extend partial ordering to an arbitrary total ordering of events while introducing the concept of logical clocks (called [Lamport timestamps](https://en.wikipedia.org/wiki/Lamport_timestamps) these days). A distributed algorithm to solve mutual exclusion is presented which demonstrates that the participating processes could just be treated as sequential state machines which can further be used to implement any arbitrary distributed system.

Need for synchronization of physical clocks arises to prevent possible anomalies as observed by user (or one could synchronize timestamps over all communication in the network to maintain happened-before relationship). Lamport presents a theorem for the upper bound on the amount of acceptable drift in synchronizing physical clocks (the proof is hard to read).

## Impact
This is one of the most cited papers in Computer Science and considered one of the first true distributed systems paper. Introduces:

- A mathematical happens-before ("happened before" in the paper) relationship, which is widely used as the basis for current distributed systems research and has found further application in other systems areas (foundation of [Java](https://en.wikipedia.org/wiki/Java_memory_model) and [C++](http://en.cppreference.com/w/cpp/language/memory_model) memory models; [Atlas](http://dx.doi.org/10.1145/2660193.2660224), a persistent programming model (that I am working with this summer)).
- Concept of causality / causal ordering of events in distributed systems.
- Concept of logical clocks (Lamport clocks or Lamport timestamps) which further led to development of important ideas like vector clocks in later distributed systems research (while logical clocks are just software counters, I still need to learn what vector clocks are).

More at [2000 PODC Influential Paper Award](http://www.podc.org/influential/2000-influential-paper/) page.

## Evidence
This paper is fairly mathematical in nature. Mathematical definitions for most ideas introduced are provided which are then used to logically establish further results. Includes just one theorem which provides a upper bound on drift that is allowed in synchronizing physical time clocks but the author himself admits the proof is pretty difficult and hence is included in the Appendix.

## Prior Work
There are just 4 references cited in the paper, two of which are foundational for this work, both describing relativity. Concept of causal effect is inspired from special relativity.

## Competitive Work
NA

## Reproducibility
NA

## Question
Is the concept of logical time (given it can be used to establish total ordering) always sufficient for implementing modern distributed systems or do we always need to resort to physical clocks? How are the space overheads (described in mutual exclusion example in the paper) overcome?

## Criticism
Do physical clocks as described by Lamport (with difficult to grasp mathematics and proof) play any important rule in modern design of distributed systems (apart from time sync protocols like NTP)?

## Ideas for further work
This paper clarified many concepts about time and synchronization between processes for me which should be useful in my current summer project. A good insight was how one does not need to depend on system clock for establishing order of events among processes even on a single machine.

<hr />

Review Template Credits:
[Prof. Rodrigo Fonseca](http://cs.brown.edu/courses/csci2950-u/s14/review.html)

