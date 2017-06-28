+++
title = "How to Reason about Correctness of Programs Designed for Non-Volatile Memory?"
date = 2017-06-27T21:54:56-07:00
tags = ["announcement", "research", "writing", "brown", "report", "master's", "project", "nvm", "Non-Volatile", "persistent memory", "formal reasoning", "concurrency", "graph", "data structure", "verification"]
categories = ["update"]
+++

I recently graduated with a [master's degree](https://cs.brown.edu/degrees/masters/) in [Computer Science](https://cs.brown.edu) from [Brown University](https://www.brown.edu). My project report that documents the work I did over the last one year is now available on the [Brown CS website](https://cs.brown.edu/research/pubs/theses/masters/) at https://cs.brown.edu/research/pubs/theses/masters/2017/singhal.kartik.pdf.

I am making a copy available here as well: [PDF](/kartik-scm-report.pdf).

## Abstract

> Traditional storage stack necessitates a separate data format for the persistence of in-memory data structures, requires additional code for conversion to that data format and wastes a lot of CPU time. Upcoming byte-addressable non-volatile memory (NVM) technologies such as memristors or phase change memory offer an opportunity to rethink how code interacts with persistent data. Researchers have come up with a variety of programming models to make effective use of NVM but, unfortunately, it is considered hard to reason about the safety properties provided by these models.

> In this report, we look at existing work in a somewhat related field of formal reasoning about the correctness of concurrent software and discuss whether those techniques can be applied to software designed for NVM or persistent memory.

> We also document our design of a concurrent graph data structure for non-volatile memory which offers crash-resilience with the help of Atlas programming model.
