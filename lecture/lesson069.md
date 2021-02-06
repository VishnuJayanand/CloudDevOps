# Lesson: APIs - APIs and Representational State Transfer (REST)

- Basic idea behind REST and RESTful APIs, cp. "Hands-On RESTful API Design Patterns and Best Practices" by Harihara Subramanian and Pethuru Raj, chapter 1

  > "Resource-oriented architecture is a foundation of the semantic web [...]. The idea of ROA is to use basic, well-understood, and well-known web technologies (HTTP, URI, and XML) along with the core design principles.
  > [...]
  > ROA defines a structural design or set of guidelines to support and implement interactions within any connected resources. Any business entity can be represented as a resource, and it can be made accessible through a URI."



## Background explanation (theory)

- Guided documentation walkthrough
  - "Hands-On RESTful API Design Patterns and Best Practices" by Harihara Subramanian and Pethuru Raj
    - chapter 1

## Terms to know *and* use

- resource-oriented architecture
- API (Application Programming Interface)
- REST (Representational State Transfer)
- RESTful API
- JSON (JavaScript Object Notation)
- request/response

## Guided examples

```bash
curl -X GET "https://bagitea.cloudlv.site/api/v1/version" -H  "accept: application/json"

curl -X GET "https://magitea.cloudlv.site/api/v1/version" -H  "accept: application/json"
```

## References and expected reading

- "Hands-On RESTful API Design Patterns and Best Practices" by Harihara Subramanian and Pethuru Raj
  - digitally available at university library
    - cp. https://www.ub.ovgu.de/ub/en/Literature+Search/Notes+for+accessing+eRessources/Specific+notes+for+publisher+offers-p-2004.html

## Practice - introduction to exercise