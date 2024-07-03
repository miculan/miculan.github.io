---
layout: page
permalink: /research/
title: research
description: My research statement and mission.
nav: true
nav_order: 21
---
## TL;DR: I work or have worked on 
- Formal methods for Concurrent and Distributed Systems
    - process calculi (CCS, π-calculus, et similia)
    - bigraphs and bigraphic reactive systems
    - models and languages for IoT, CAS and edge computing
    - modelisation and verification of security protocols
    - quantitative systems (DMC, CTMC, MDP)
- Distributed architectures, languages and security
    - cooperating communicating processes
    - peer-to-peer, pub-sub and event-based architectures
    - distributed ledgers
    - security of virtualization and containerization
    - information flow control
- Logic and Category theory
    - Modal, temporal and spatial logics
    - Monads, algebras, coalgebras
    - Fuzzy and nominal sets
- Type theory
    - session and behavioural types
    - logical frameworks
    - proof assistants (Coq, Agda,…)

## Research statement
My research mission revolves around the fundamental enhancement of concurrent and distributed systems — making them not only more effective and robust but also inherently secure. It's a multi-faceted approach that amalgamates formal methods, advanced programming language techniques, logic, category theory, and the foundational principles of computer security. This interdisciplinary foundation is pivotal to tackle the intricate challenges inherent in concurrent systems, providing a solid theoretical framework to enhance both their functionality and security.

Within this framework, my objectives are two-fold. First, I aim to elevate system reliability and security by addressing critical aspects such as synchronization issues and potential vulnerabilities. These are the linchpins of robust and secure concurrent systems. Second, I strive to contribute to a broader understanding of computational processes, especially in the context of secure concurrent systems. This comprehension is essential for driving innovation and ensuring that our systems can withstand the ever-evolving landscape of cyber threats.

Ultimately, my goal is to foster innovation, pushing the boundaries of distributed programming, analysis, and security methodologies. By blending the power of formal methods, advanced programming techniques, and a solid mathematical and security-driven foundation, I aspire to not only enhance concurrent systems but also pave the way for a safer and more efficient digital future.

## Research history
It is difficult to summarise over three decades of research in a single page, so I will recall some achievements. Overall, I can say that my research has consistently focused on developing and applying formal methods to model and understand complex systems, in order to enhance their trustworthiness. Along all these years, my interests have evolved within this broad landscape, tackling new challenges as they emerged.

My initial work (1994-1997 and 2000-2006) centered on formalizing programs and processes within logical frameworks and proof assistants built on type theory (e.g., Lego, Coq). Recognizing the theoretical and practical limitations of existing tools, I concentrated on developing novel techniques to streamline the formalization and reasoning process.
A key outcome of this effort was the introduction of the _weak Higher-Order Abstract Syntax_ (weak HOAS) technique for handling binders in inductive type theories {% cite DBLP:conf/types/HonsellM95 %}{% cite mik:eltop %}{% cite miculan:icalp99 %}. This innovation, now a [standard techniques](https://www.seas.upenn.edu/~plclub/poplmark/) within the Coq community, continues to be actively used for reasoning about languages with binders.<br/>
While powerful, weak HOAS presents challenges for reasoning by induction over higher-order terms. 
To address this, we introduced the _Theory of Contexts_, a set of three axioms that demonstrably improve inductive reasoning {% cite hms:picic %}; this work is still a landmark in formal reasoning about π-calculus and similar models in Coq. 
However, adding axioms to a complex system like Coq requires careful consideration. We formally proved the soundness of the Theory of Contexts using category-theoretic constructions called _tripos_ {% cite bhhms %}. This work, in collaboration with the late Martin Hofmann, marked my second significant encounter with category theory, which became a cornerstone of my subsequent research.<br/>
As a side note, the introduction of (weak) HOAS sparked significant interest in the research community around higher-order abstract syntax and binders, yielding three influential papers at LICS 1999 ([Fiore et al., 1999](https://doi.org/10.1109/LICS.1999.782615); [Hofmann, 1999](https://doi.org/10.1109/LICS.1999.782616); [Gabbay and Pitts, 1999](https://doi.org/10.1109/LICS.1999.782617)). In particular, the latter laid the foundation for the new and thriving area of theoretical computer science called "[nominal techniques](https://ncatlab.org/nlab/show/nominal+set)". We have investigated the connections between these approaches to binders in {% cite DBLP:conf/fossacs/MiculanY05 %}{%cite gmm:hosc05 %}.

Another limitation of type theory-based logical frameworks is that circular definitions are subject to syntactic restrictions to ensure their termination and productivity. These restrictions decrease the expressive power of the language. To address this problem, we have proposed a very general Banach-like theorem for defining fixed-points in categories of sheaves {% cite dgm:fossacs04 %}.
This result gives a unifying and general account of most techniques used in computer science in order to ensure convergency of circular definitions, such as well-founded recursion and contractivity in complete ultrametric spaces.
Furthermore, to achieve a more natural and practical approach, we introduced the notion of _complete ordered families of equivalence relations_ (COFE) in {% cite dgm:types02 %}. COFE offer a more intuitive alternative to specific ultrametric spaces and integrates well with [formalizations](https://1lab.dev/Cat.Instances.OFE.html). This led to COFE becoming a standard tool in [synthetic guarded domain theory](https://ncatlab.org/nlab/show/synthetic+guarded+domain+theory) and step-indexed logical relations like in [Iris](https://iris-project.org/), a verification framework crucial for proving the correctness and semantic soundness of the [Rust programming language](https://www.rust-lang.org/).

...to be continued...
