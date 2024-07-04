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

It is difficult to summarise over three decades of research, but I can say that my research has consistently focused on developing and applying formal methods to model and understand complex systems, in order to enhance their trustworthiness. Along all these years, my interests have evolved within this broad landscape, tackling new challenges as they emerged.
I will recall here some achievements.

My **initial work (1994-1997 and 2000-2006)** centered on formalizing programs and processes within logical frameworks and proof assistants built on type theory (e.g., Lego, Coq). Recognizing the theoretical and practical limitations of existing tools, I concentrated on developing novel techniques to streamline the formalization and reasoning process.
A key outcome of this effort was the introduction of the _weak Higher-Order Abstract Syntax_ (weak HOAS) technique for handling binders in inductive type theories {% cite DBLP:conf/types/HonsellM95 %}{% cite mik:eltop %}{% cite miculan:icalp99 %}. This innovation, now a [standard techniques](https://www.seas.upenn.edu/~plclub/poplmark/) within the Coq community, continues to be actively used for reasoning about languages with binders.<br/>
While powerful, weak HOAS presents challenges for reasoning by induction over higher-order terms. 
To address this, we introduced the _Theory of Contexts_, a set of three axioms that demonstrably improve inductive reasoning {% cite hms:picic %}; this work is still a landmark in formal reasoning about π-calculus and similar models in Coq. 
However, adding axioms to a complex system like Coq requires careful consideration. We formally proved the soundness of the Theory of Contexts using category-theoretic constructions called _tripos_ {% cite bhhms %}. This work, in collaboration with the late Martin Hofmann, marked my second significant encounter with category theory, which became a cornerstone of my subsequent research.<br/>
As a side note, the introduction of (weak) HOAS sparked significant interest in the research community around higher-order abstract syntax and binders, yielding three influential papers at LICS 1999 ([Fiore et al., 1999](https://doi.org/10.1109/LICS.1999.782615); [Hofmann, 1999](https://doi.org/10.1109/LICS.1999.782616); [Gabbay and Pitts, 1999](https://doi.org/10.1109/LICS.1999.782617)). In particular, the latter laid the foundation for the new and thriving area of theoretical computer science called "[nominal techniques](https://ncatlab.org/nlab/show/nominal+set)". We have investigated the connections between these approaches to binders in {% cite DBLP:conf/fossacs/MiculanY05 %}{%cite gmm:hosc05 %}.

Another limitation of type theory-based logical frameworks is that circular definitions are subject to syntactic restrictions to ensure their termination and productivity. These restrictions decrease the expressive power of the language. To address this problem, we have proposed a very general Banach-like theorem for defining fixed-points in categories of sheaves {% cite dgm:fossacs04 %}.
This result gives a unifying and general account of most techniques used in computer science in order to ensure convergency of circular definitions, such as well-founded recursion and contractivity in complete ultrametric spaces.
Furthermore, to achieve a more natural and practical approach, we introduced the notion of _complete ordered families of equivalence relations_ (COFE) in {% cite dgm:types02 %}. COFE offer a more intuitive alternative to specific ultrametric spaces and integrates well with [formalizations](https://1lab.dev/Cat.Instances.OFE.html). This led to COFE becoming a standard tool in [synthetic guarded domain theory](https://ncatlab.org/nlab/show/synthetic+guarded+domain+theory) and step-indexed logical relations like in [Iris](https://iris-project.org/), a verification framework crucial for proving the correctness and semantic soundness of the [Rust programming language](https://www.rust-lang.org/).
This interesting subject re-emerged during a visit to Aarhus years later, resulting in a collaborative work with Lars Birkedal's group {%cite bbm:tlca14%}.

My exploration of logical frameworks sparked an interest in _metamodels_, which became a main subject of my **second research period (2006-2015)**. 
Metamodels are abstract frameworks that allow for proving general results about entire classes of models. Logical frameworks themselves can be viewed as logical metamodels, ideal for reasoning about logical systems. Other metamodels offer advantages for reasoning about the operational semantics of programs and processes.
I particularly delved into [Bigraphs](https://en.wikipedia.org/wiki/Bigraph) and Bigraphical Reactive Systems (BRSs), a graphical metamodel conceived by [Robin Milner](https://en.wikipedia.org/wiki/Robin_Milner). BRSs offer a powerful approach to describing the syntax and semantics of distributed systems by leveraging the distinct concepts of _connectivity_ and _locality_.
To address limitations in original bigraphs, we introduced _directed bigraphs_ {% cite gm:mfps07 %}. This extension enhanced expressivity while preserving the core strengths of bigraphs, particularly the RPO construction and bisimulations. 
Directed bigraphs proved valuable for modeling various systems, including Fusion calculus (previously incompatible with standard bigraphs) {% cite gm:concur07 %}, Access control systems {% cite gm:gtvmt08 %}, Systems biology {% cite bgm:biobig%}{%cite bgm:biobeta %}, Multi-agent systems {% cite mmp:dais14 %}.
Furthermore, I actively contributed to bigraph tooling. Our initial DBtk toolkit {% cite bgm:dbtk %} has been succeeded by [jLibBig](https://bigraphs.github.io/jlibbig/), a Java library for bigraphs and BRSs, which remains actively developed and used by the community.

My work on modelling Fusion calculus with bigraphs led me to investigate _bialgebras_, a unifying framework for operational and denotational semantics introduced by Turi and [Plotkin](https://en.wikipedia.org/wiki/Gordon_Plotkin). In earlier work {% cite ms:ppdp03 %}, I had already extended this framework to typed higher-order abstract syntax and semantics.
Inspired by applications in systems biology {%cite DBLP:journals/corr/abs-1011-0488%}{%cite bm:tcs12%}, I became interested in using bialgebras and related GSOS rule formats to model _quantitative_ aspects of systems. This resulted in the introduction of the first structural operational semantics for continuous state probabilistic processes {%cite bm:cmcs12%} and a general GSOS for non-deterministic processes with quantitative features {%cite DBLP:journals/corr/MiculanP14%}.  We further developed a generic algorithm for deciding weak bisimulations over a broad class of weighted labeled transition systems {%cite mp:ictcs17%}.
Finally, in {%cite bm:ictcs16%}{%cite DBLP:journals/tcs/BernardoM19%}, we established a surprising result: disjunctive probabilistic modal logic can fully characterize bisimilarity on reactive probabilistic systems (also known as Markov decision processes).

...to be continued...
