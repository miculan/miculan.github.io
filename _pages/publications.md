---
layout: page
permalink: /publications/
title: publications
description: My publications, in reverse chronological order.
nav: true
nav_order: 22
---
<!-- _pages/publications.md -->
See also my pages on
[IRIS](https://air.uniud.it/cris/rp/rp00250),
[Google Scholar](https://scholar.google.com/citations?user=bPAplNgAAAAJ), 
[DBLP](https://dblp.uni-trier.de/pid/m/MarinoMiculan.html),
[Scopus](https://www.scopus.com/authid/detail.uri?authorId=6602346936),
[Orcid](https://orcid.org/0000-0003-0755-3444),
[ResearchGate](https://www.researchgate.net/profile/Marino-Miculan),
[SemanticScholar](https://www.semanticscholar.org/author/Marino-Miculan/1755352),
[arxiv](https://arxiv.org/search/cs?searchtype=author&query=Miculan,+M),
[MathSciNet](https://mathscinet.ams.org/mathscinet/MRAuthorID/352119).<br/>
My Erdős number is 3 (Erdős - Hell - Rizzi - Miculan).


<script type="text/javascript">
  function showOnlyPub(g) {
    const elenco = document.querySelectorAll('.row');
    elenco.forEach(item => {
      if (item.classList.contains(g)) {
          item.parentNode.style.display = 'list-item';
      } else {
          item.parentNode.style.display = 'none';
      }
    });
  }

  function showAllPub() {
    document.querySelectorAll('.row').forEach(item => item.parentNode.style.display = 'list-item');
  }
</script>

Show:
<input type="radio" name="pub_selection" onclick="showAllPub()" checked><label>All</label> |
<input type="radio" name="pub_selection" onclick="showOnlyPub('article')"><label>Articles in Journals</label> |
<input type="radio" name="pub_selection" onclick="showOnlyPub('inproceedings')"><label>Articles in Proceedings</label> |
<input type="radio" name="pub_selection" onclick="showOnlyPub('proceedings')"><label>Proceedings</label> |
<input type="radio" name="pub_selection" onclick="showOnlyPub('preprint')"><label>Preprints</label> |
<input type="radio" name="pub_selection" onclick="showOnlyPub('thesis')"><label>Theses</label> |
<input type="radio" name="pub_selection" onclick="showOnlyPub('book')"><label>Books</label> |
<input type="radio" name="pub_selection" onclick="showOnlyPub('techreport')"><label>Tech Reports</label> |
<input type="radio" name="pub_selection" onclick="showOnlyPub('misc')"><label>Misc</label>
<div class="publications">
{% bibliography -f papers -G descending -T bib3 --style din-1505-2 %}
</div>
