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
My research career has been dedicated to developing formal methods for modeling, verification, and analysis of complex systems, ensuring their trustworthiness. Along over three decades and almost one hundred papers, my interests have evolved within this broad landscape, tackling new challenges as they emerged.
Here I recall the main achievements; see [publications](/publications) for the complete list of papers.

My **initial work (1994-1997 and 2000-2006)** centered on formalizing programs and processes within logical frameworks and proof assistants based on type theory (e.g., Lego, Coq). Recognizing the theoretical and practical limitations of existing tools, I concentrated on developing novel techniques to streamline the formalization and reasoning process.
A key outcome of this effort was the introduction of the _weak Higher-Order Abstract Syntax_ (weak HOAS) technique for handling binders in inductive type theories {% cite DBLP:conf/types/HonsellM95 %}{% cite mik:eltop %}{% cite miculan:icalp99 %}. This innovation, now a [standard techniques](https://www.seas.upenn.edu/~plclub/poplmark/) within the Coq community, continues to be actively used for reasoning about languages with binders.  
While powerful, weak HOAS presents challenges for reasoning by induction over higher-order terms. 
To address this, we introduced the _Theory of Contexts_, a set of three axioms that demonstrably improve inductive reasoning {% cite hms:picic %}; this work is still a landmark in formal reasoning about π-calculus and similar models in Coq. 
However, adding axioms to a complex system like Coq requires careful consideration. We formally proved the soundness of the Theory of Contexts using category-theoretic constructions called _tripos_ {% cite bhhms %}. This work, in collaboration with the late Martin Hofmann, marked my second significant encounter with category theory, which became a cornerstone of my subsequent research.  
As a side note, the introduction of (weak) HOAS sparked significant interest in the research community around higher-order abstract syntax and binders, yielding three influential papers at LICS 1999 ([Fiore et al., 1999](https://doi.org/10.1109/LICS.1999.782615); [Hofmann, 1999](https://doi.org/10.1109/LICS.1999.782616); [Gabbay and Pitts, 1999](https://doi.org/10.1109/LICS.1999.782617)). In particular, the latter laid the foundation for the new and thriving area of theoretical computer science called "[nominal techniques](https://ncatlab.org/nlab/show/nominal+set)". We have investigated the connections between these approaches to binders in {% cite DBLP:conf/fossacs/MiculanY05 %}{%cite gmm:hosc05 %}.

Another limitation of type theory-based logical frameworks is that circular definitions are subject to syntactic restrictions to ensure their termination and productivity. These restrictions decrease the expressive power of the language. To address this problem, we have proposed a very general Banach-like theorem for defining fixed-points in categories of sheaves {% cite dgm:fossacs04 %}.
This result gives a unifying and general account of most techniques used in computer science in order to ensure convergency of circular definitions, such as well-founded recursion and contractivity in complete ultrametric spaces.
Furthermore, to achieve a more natural and practical approach, we introduced the notion of _complete ordered families of equivalence relations_ (COFE) in {% cite dgm:types02 %}. COFE offer a more intuitive alternative to specific ultrametric spaces and integrates well with [formalizations](https://1lab.dev/Cat.Instances.OFE.html). This led to COFE becoming a standard tool in [synthetic guarded domain theory](https://ncatlab.org/nlab/show/synthetic+guarded+domain+theory) and step-indexed logical relations like in [Iris](https://iris-project.org/), a verification framework crucial for proving the correctness and semantic soundness of the [Rust programming language](https://www.rust-lang.org/).
Years later, this interesting subject re-emerged during a visit to Aarhus, resulting in a collaborative work with Lars Birkedal's group {%cite bbm:tlca14%}.


My exploration of logical frameworks sparked an interest in _metamodels_, which became a main subject of my **second research period (2006-2016)**. 
Metamodels are abstract frameworks that allow for proving general results about entire classes of models. Logical frameworks themselves can be viewed as logical metamodels, ideal for reasoning about logical systems. Other metamodels offer advantages for reasoning about the operational semantics of programs and processes.
I particularly investigated [Bigraphs](https://en.wikipedia.org/wiki/Bigraph) and Bigraphical Reactive Systems (BRSs), a graphical metamodel conceived by [Robin Milner](https://en.wikipedia.org/wiki/Robin_Milner). BRSs offer a powerful approach to describing the syntax and semantics of distributed systems by leveraging the distinct concepts of _connectivity_ and _locality_.
To address limitations in original bigraphs, we introduced _directed bigraphs_ {% cite gm:mfps07 %}. This extension enhanced expressivity while preserving the core strengths of bigraphs, particularly the RPO construction and bisimulations. 
Directed bigraphs proved valuable for modeling various systems, including Fusion calculus (previously incompatible with standard bigraphs) {% cite gm:concur07 %}, Access control systems {% cite gm:gtvmt08 %}, Systems biology {% cite bgm:biobig%}{%cite bgm:biobeta %}, Multi-agent systems {% cite mmp:dais14 %}.
Furthermore, I actively contributed to bigraph tooling. Our initial DBtk toolkit {% cite bgm:dbtk %} has been succeeded by [jLibBig](https://bigraphs.github.io/jlibbig/), a Java library for bigraphs and BRSs, which remains actively developed and used by the community; the core algorithms are described in {% cite DBLP:conf/gg/ChiapperiniMP20 %}{% cite DBLP:journals/scp/ChiapperiniMP22 %}. 
In {% cite mmp:gcm14 %} we presented a fully decentralized implementation of bigraph matching, suited to distributed systems where the bigraph structure is distributed among various nodes, instead of being stored in a centralized server.  Distributed matching can help to deal with the intrinsic complexity of bigraph matching, which is NP-complete as we proved in {%cite bmr:tgc14 %}. 

My work on modelling Fusion calculus with bigraphs led me to investigate _bialgebras_, a unifying framework for operational and denotational semantics introduced by Turi and [Plotkin](https://en.wikipedia.org/wiki/Gordon_Plotkin). Previously {% cite ms:ppdp03 %}, I extended this framework to typed higher-order abstract syntax and semantics using presheaf categories. With similar techniques, in {% cite miculan:mfps08 %} I have given a bialgebraic semantics of Fusion calculus, fitting the notion of _hyperbisimulation_ in the coalgebraic setting.  
Inspired by applications in systems biology {%cite DBLP:journals/corr/abs-1011-0488%}{%cite bm:tcs12%}, I became interested in using bialgebras and related GSOS rule formats to model _quantitative_ aspects of systems. This resulted in the introduction of the first structural operational semantics for continuous state probabilistic processes {%cite bm:cmcs12%} and a general GSOS for non-deterministic processes with quantitative features {%cite DBLP:journals/corr/MiculanP14%}.

Beyond standard bisimulation, I explored the concept of _weak bisimulation_, which considers unobservable actions. In {% cite mp:wblts-tr %}, we extended the coalgebraic framework to handle various system behaviors using weighted semirings. This approach unifies weak bisimulations for non-deterministic and fully probabilistic systems, and offers a definition for systems where it was previously lacking (e.g., stochastic systems). A comprehensive theory of behavioural equivalences for coalgebras with unobservable moves has been presented in {%cite bmp:jlamp15%}.
Additionally, we developed a general algorithm {%cite mp:ictcs17%} for efficiently deciding weak bisimulations in a broad class of systems.
And using categorical tools in {%cite bm:ictcs16%}{%cite DBLP:journals/tcs/BernardoM19%} we established an unexpected result: disjunctive probabilistic modal logic is enough to fully characterize bisimilarity on reactive probabilistic systems (also known as Markov decision processes).


The study of metamodels for distributed computational models increased my interest in security and trustworthiness issues of distributed, component-based, and _smart_ systems, which is the focus of my **third (and current) research period (2016-today)**. 
These systems involve intricate interactions of numerous heterogeneous components, making their behavior complex to analyze. To address this challenge, currently I leverage formal methods (with a pinch of machine learning) to develop novel models, languages, methodologies, and verification techniques to formally analyze and ensure the security and trustworthiness of these systems. 
I approach this subject from multiple angles, focusing on coordination and security issues.

First, we explored transactional memory models to improve coordination in distributed systems. We introduced an expressive Haskell-like language with open transactions {%cite mpt:coord15%}{%cite DBLP:journals/corr/MiculanP16%}. This language allows processes to join transactions dynamically, overcoming limitations of traditional models in coordinating communicating processes.
Along this line, we developed [Acidify](https://github.com/lucageatti/Acidify) {%cite DBLP:conf/ictcs/GeattiIM19%}, an abstract middleware for coordinating transactions between distributed processes accessing shared storage services, possibly in the cloud. Acidify supports heterogeneous storage, including both local and remote options. We implemented Acidify in Erlang and provided bindings for popular storage services like [Riak KV](https://riak.com/products/riak-kv/index.html) and [Amazon S3](https://aws.amazon.com/s3/).

A key area of my current research involves formal models and tools for reasoning about composable microservice-oriented architectures based on container technologies, like Docker and Kubernetes. In {%cite bmp:sac20%} we introduced a formal model for these systems using the framework of Bigraphical Reactive Systems (BRSs). This model effectively captures various architectural aspects of containerized applications. For instance, the composition of containers directly translates to the composition of corresponding bigraphs within an "environment bigraph."
This foundational model has led to important developments and tools, such as [DBCChecker](https://github.com/cysecud/DBCChecker) {%cite DBLP:conf/itasec/AltaruiMP23%}, a bigraph-based tool for verifying security properties of container compositions statically, i.e. before deploying the application. I'm actively expanding on this research within the SECCO and SWOPS projects of PNRR SERICS.

Still related to static analysis of composable systems is the work {%cite smdg:facs21 %}{%cite stolze2022composable %}, where we introduced a theory of _composable partial multiparty session types for open systems_.
This novel approach allows composing partial sessions without requiring a predefined global type or complete knowledge of missing components. Partial session types capture the individual perspectives of participants, enabling the merging of compatible views during composition to form a unified session view. In cases of incompatibility (e.g., due to miscommunication or deadlocks), the merging phase detects these issues.

Security vulnerabilities have always intrigued me, even during my earlier research in other areas. For instance, in {%cite mm:secrypt11%} we developed one of the first methods for intrusion detection based on system call traces in paravirtualized systems (a la Xen); in {%cite mu:sofsem11 %} we conducted the first formal analysis of Facebook Connect's Single Sign-On protocol using [AVISPA](https://www.avispa-project.org/).
In recent years, my work on formal analysis of security protocols has become more systematic, reflecting my enduring interest in this area. 
First, in {%cite DBLP:journals/corr/MansuttiMiculan18 %} we have proved the decidability of hedge bisimulation on finite processes of the applied π-calculus.
Utilizing the [ProVerif](https://bblanche.gitlabpages.inria.fr/proverif/) tool (which adopts the applied π-calculus for representing cryptographic protocols), we have investigated the security of Telegram's MTProto 2.0 protocol {%cite mv:secrypt21 %}{%cite MICULAN2022103072 %} and the Multi-Factor Authentication of Italy's e-IDAS digital identity card CIE {%cite vepm:secrypt24%}. This research line also connects with DBCChecker {%cite DBLP:conf/itasec/AltaruiMP23%}, which leverages ProVerif as its backend verification engine.

Beyond microservices and containers, I'm actively exploring _edge computing_, an emerging paradigm where computations shift from the cloud to devices interacting with the environment. This approach enhances reliability, scalability, privacy, and security. However, effective communication and coordination among potentially large numbers of distributed edge components require suitable abstractions.
To this end, we introduced AbU {%cite mp:ictac21%}{%cite PASQUA2023113841%}. AbU is a calculus for modeling and reasoning about Event-Condition-Action (ECA) systems with attribute-based communication. This communication model facilitates coordination among large node families in a declarative manner. AbU is being implemented in Go and other languages (see tools for [the AbU Language](https://github.com/abu-lang/) and {%cite pcm:access22%}) and serves as the foundation for verifying security and safety properties of distributed IoT systems through static or dynamic analysis {%cite pm:sefm21%}{%cite PASQUA2024114537%}.

While my focus has shifted towards more distributed programming language theory and security protocol analysis, I remain committed to foundational research, particularly in graph-based metamodels. In a recent work {%cite DBLP:conf/fossacs/CastelnovoGM22%}{%cite CASTELNOVO2024114280 %}, we introduced a novel criterion for 𝓜,𝓝-adhesivity, a crucial property for categories in algebraic rewriting. This new criterion finds application in hierarchical graph structures like bigraphs.

つづく (to be continued)
