---
layout: page
permalink: /scrap/
title: scrap
description: My research statement and mission.
nav: false
nav_order: 21
---
It is difficult to resume 30+ years of research in a single page. But if I had to resume in few words, I would say this:

I like machines in general, and computer in particular, because they are stupid and simple, compared to the complexity of other subjects (especially humans). 
Biological systems are the result of a random-based selection-driven evolution. They are not the result of a (semi)rational, planned design. Understanding their behaviour is a mess.
Instead, systems and computers are designed by humans. And this is an advantage we must be aware of. Because if we design them, we are in the position to understand, control and determine their behavior. The converse is not true. Never will be.

From this point, my research follows.

It is difficult to summarise over three decades of research in a single page, but I can say that my research has consistently focused on developing and applying formal methods to model and understand complex systems, in order to enhance their trustworthiness. My interests have evolved within this broad landscape, tackling new challenges as they emerged.

My initial work (1994-1997 and 2000-2006) centered on formalizing programs and processes within logical frameworks and proof assistants built on type theory (e.g., Lego, Coq). Recognizing the theoretical and practical limitations of existing tools, I concentrated on developing novel techniques to streamline the formalization and reasoning process.
A key outcome of this effort was the introduction of the _weak Higher-Order Abstract Syntax_ (weak HOAS) technique for handling binders in inductive type theories {% cite DBLP:conf/types/HonsellM95 %}{% cite mik:eltop %}{% cite miculan:icalp99 %}. This innovation, now a [standard techniques](https://www.seas.upenn.edu/~plclub/poplmark/) within the Coq community, continues to be actively used for reasoning about languages with binders.<br/>
While powerful, weak HOAS presents challenges for reasoning by induction over higher-order terms. 
To address this, we introduced the _Theory of Contexts_, a set of three axioms that demonstrably improve inductive reasoning {% cite hms:picic %}; this work is still a landmark in formal reasoning about π-calculus and similar models in Coq. 
However, adding axioms to a complex system like Coq requires careful consideration. We formally proved the soundness of the Theory of Contexts using category-theoretic constructions called _tripos_ {% cite bhhms %}. This work, in collaboration with the late Martin Hofmann, marked my second significant encounter with category theory, which became a cornerstone of my subsequent research.<br/>
As a side note, the introduction of (weak) HOAS sparked significant interest in the research community around higher-order abstract syntax and binders, yielding three influential papers at LICS 1999 ([Fiore et al., 1999](https://doi.org/10.1109/LICS.1999.782615); [Hofmann, 1999](https://doi.org/10.1109/LICS.1999.782616); [Gabbay and Pitts, 1999](https://doi.org/10.1109/LICS.1999.782617)). In particular, the latter laid the foundation for the new and thriving area of theoretical computer science called "[nominal techniques](https://ncatlab.org/nlab/show/nominal+set)". We have investigated the connections between these approaches to binders in {% cite gmm:hosc05 %}.

A problem of type theory-based logical frameworks is that circular definitions are subject to syntactic restrictions to ensure their termination and productivity. However, these restrictions decrease the expressive power of the language. To address this problem, we have proposed a very general Banach-like theorem for defining fixed-points in categories of sheaves {% cite dgm:fossacs04 %}.
This result gives a unifying and general account of most techniques used in computer science in order to ensure convergency of circular definitions, such as well-founded recursion and contractivity in complete ultrametric spaces.
Furthermore, to achieve a more natural and practical approach, we introduced the notion of _complete ordered families of equivalence relations_ (COFE) in {%cite dgm:types02%}. COFE offer a more intuitive alternative to specific ultrametric spaces and integrates well with [formalizations](https://1lab.dev/Cat.Instances.OFE.html). This led to COFE becoming a standard tool in [synthetic guarded domain theory](https://ncatlab.org/nlab/show/synthetic+guarded+domain+theory) and step-indexed logical relations like in [Iris](https://iris-project.org/), a verification framework crucial for proving the correctness and semantic soundness of the [Rust programming language](https://www.rust-lang.org/).

...to be continued...

metamodels
Operational 
2006-... Bigraphs

Semantics of processes and calculi. GSOS. Also Quantitative.


weak bisimulations.
