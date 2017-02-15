+++
title = "Flow Rate Fairness: Dismantling a Religion"
type = "post"
categories = ["review"]
tags = ["papers","computer networks", "congestion control", "fairness", "architecture", "public policy", "SIGCOMM", "communications", "seminar"]
date = "2017-02-14T14:05:49-05:00"

+++

## Paper Title
Flow Rate Fairness: Dismantling a Religion

## Author(s)
Bob Briscoe

## Date
March 2007. ACM SIGCOMM Computer Communication Review, Volume 37 Issue 2.

<!--more-->

## DOI/Authoritative Link to Paper
- [doi:10.1145/1232919.1232926](http://dx.doi.org/10.1145/1232919.1232926)
- [Author's listing of paper and slides](http://www.bobbriscoe.net/pubs.html#rateFairDis)

## Novel Idea / Main Result(s)
The main claim of the paper is that flow rate as a metric for fairness is completely bogus and a better metric for the same should be the cost.

## Impact
Not completely sure how fairness criterion has/has not changed in the past 10 years since this paper was published. But my takeaway from this paper is that long-established norms should not be taken for granted and there is value in evaluating the truth for each established view from time to time.

It's fair to say though that I did not find any rebuttal paper in the defense of flow rate fairness as the author of this paper demands. However, RFC 5290 presents some alternate views on the topic.

## Evidence
I did not find the argument very convincing given the lack of analytical or empirical analysis. The reasoning is based on arguments from philosophy, social science and "real life" for a more accurate definition of fairness.

## Reproducibility
No, the description is not sufficient to reproduce the work.

## Question
I was reminded of thinking about the Internet as a utility (from the net neutrality debate outside of this paper) and how another utility -- electricity -- is well distributed across the grid system fairly. I wonder if there are lessons to be learned from this analogy given the complexities and non-uniform nature of the global Internet.

## Criticism
My main concern with this paper is that it tries to make such a big claim about the futility of a fairness metric that has been working for a couple of decades but fails to provide enough persuasive evidence to substantiate the claims.

## Ideas for further work
See the Question section above.


<hr />

Review Template Credits:
[Prof. Rodrigo Fonseca](http://cs.brown.edu/courses/csci2950-u/s14/review.html)
