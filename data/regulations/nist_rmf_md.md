# NIST AI Risk Management Framework (AI RMF 1.0)
# NIST AI 100-1 | January 2023
# Source: U.S. Department of Commerce, National Institute of Standards and Technology
# DOI: https://doi.org/10.6028/NIST.AI.100-1
# RAG chunking: split on "### " headers

---

### Overview — AI RMF Purpose and Structure

The AI RMF is a voluntary, rights-preserving, non-sector-specific framework directed by the National AI Initiative Act of 2020. Its goal is to offer organizations designing, developing, deploying, or using AI systems a resource to manage the many risks of AI and promote trustworthy and responsible AI.

The AI RMF defines an AI system as an engineered or machine-based system that can, for a given set of objectives, generate outputs such as predictions, recommendations, or decisions influencing real or virtual environments. AI systems are designed to operate with varying levels of autonomy.

The Framework is divided into two parts. Part 1 discusses how organizations frame AI risks and describes the intended audience. Part 2 comprises the Core of the Framework: four functions — GOVERN, MAP, MEASURE, and MANAGE — broken down into categories and subcategories.

The AI RMF is intended to be a living document. A review with formal input from the AI community is expected no later than 2028.

**Financial AI governance note:** The NIST AI RMF is a voluntary framework — it does not carry legal penalties. It serves as the methodological backbone for AI governance best practices, complementing mandatory regulations like the EU AI Act and Korean AI Basic Act. Organizations should use it to structure internal AI risk management processes that satisfy regulatory requirements.

---

### Part 1 — Framing Risk

**1.1 Understanding and Addressing Risks, Impacts, and Harms**

In the context of the AI RMF, risk refers to the composite measure of an event's probability of occurring and the magnitude or degree of the consequences of the corresponding event. When considering the negative impact of a potential event, risk is a function of (1) the negative impact, or magnitude of harm, that would arise if the circumstance or event occurs and (2) the likelihood of occurrence.

Negative impact or harm can be experienced by: individuals, groups, communities, organizations, society, the environment, and the planet.

Potential harms fall into three categories:
- Harm to People: harm to a person's civil liberties, rights, physical or psychological safety, or economic opportunity; harm to a group such as discrimination against a population sub-group; harm to democratic participation or educational access.
- Harm to an Organization: harm to an organization's business operations; harm from security breaches or monetary loss; harm to an organization's reputation.
- Harm to an Ecosystem: harm to interconnected and interdependent elements and resources; harm to the global financial system, supply chain, or interrelated systems; harm to natural resources, the environment, and planet.

**1.2 Challenges for AI Risk Management**

**Risk Measurement Challenges:**
- Risks related to third-party software, hardware, and data — third-party risk metrics may not align with deploying organization's metrics.
- Tracking emergent risks — AI systems can evolve, creating risks that are latent at a given point in time.
- Availability of reliable metrics — current lack of consensus on robust measurement methods.
- Risk at different stages of the AI lifecycle — measuring risk earlier vs. later may yield different results.
- Risk in real-world settings — laboratory measurements may differ from operational risk.
- Inscrutability — opaque AI systems (limited explainability) complicate risk measurement.
- Human baseline — AI systems carry out different tasks, and perform tasks differently, than humans.

**1.2.2 Risk Tolerance**

Risk tolerance refers to the organization's or AI actor's readiness to bear the risk in order to achieve its objectives. Risk tolerance can be influenced by legal or regulatory requirements. Risk tolerances are likely to change over time as AI systems, policies, and norms evolve.

The Framework is intended to be flexible and to augment existing risk practices which should align with applicable laws, regulations, and norms.

**1.2.3 Risk Prioritization**

Actionable risk management efforts lay out clear guidelines for assessing trustworthiness of each AI system an organization develops or deploys. Policies and resources should be prioritized based on the assessed risk level and potential impact of an AI system.

When applying the AI RMF, risks which the organization determines to be highest call for the most urgent prioritization and most thorough risk management process. In cases where an AI system presents unacceptable negative risk levels — such as where significant negative impacts are imminent, severe harms are actually occurring, or catastrophic risks are present — development and deployment should cease in a safe manner until risks can be sufficiently managed.

**1.2.4 Organizational Integration and Management of Risk**

AI risks should not be considered in isolation. AI risk management should be integrated and incorporated into broader enterprise risk management strategies and processes. Treating AI risks along with other critical risks, such as cybersecurity and privacy, will yield a more integrated outcome and organizational efficiencies.

**Financial AI governance note (G4):** For financial institutions, AI risk management must integrate with existing frameworks: Basel III/CRD credit risk management, ICAAP, model risk management (SR 11-7 equivalent), and operational risk frameworks. The AI RMF's MAP-MEASURE-MANAGE cycle maps directly to financial model lifecycle governance.

---

### Part 1 — AI Risks and Trustworthiness (Section 3)

For AI systems to be trustworthy, they often need to be responsive to a multiplicity of criteria. This Framework articulates the following characteristics of trustworthy AI:

**3.1 Valid and Reliable**

Validation is the confirmation, through the provision of objective evidence, that the requirements for a specific intended use or application have been fulfilled. Reliability is the ability of an item to perform as required, without failure, for a given time interval, under given conditions.

Accuracy is defined as closeness of results of observations, computations, or estimates to the true values or the values accepted as being true. Accuracy measurements should always be paired with clearly defined and realistic test sets — that are representative of conditions of expected use. Accuracy measurements may include disaggregation of results for different data segments.

Robustness or generalizability is the ability of a system to maintain its level of performance under a variety of circumstances. Robustness requires not only that the system perform exactly as it does under expected uses, but also that it should perform in ways that minimize potential harms to people if it is operating in an unexpected setting.

**Financial AI note (G1):** For credit scoring AI, accuracy must be measured and disaggregated by customer demographic segment. Robustness requires that the model generalize beyond its training population. Both must be validated before deployment and monitored continuously.

**3.2 Safe**

AI systems should not under defined conditions lead to a state in which human life, health, property, or the environment is endangered. Safe operation is improved through: responsible design, development, and deployment practices; clear information to deployers on responsible use; responsible decision-making by deployers and end users; and explanations and documentation of risks based on empirical evidence of incidents.

Other practical approaches for AI safety relate to rigorous simulation and in-domain testing, real-time monitoring, and the ability to shut down, modify, or have human intervention into systems that deviate from intended or expected functionality.

**Financial AI note (G2):** Safety for lending AI includes: ability to fail safely (flag for human review rather than make erroneous credit decisions when input data is anomalous); real-time monitoring for model degradation; human intervention capability for loan officers.

**3.3 Secure and Resilient**

AI systems may be said to be resilient if they can withstand unexpected adverse events or unexpected changes in their environment or use, or if they can maintain their functions and structure in the face of internal and external change and degrade safely and gracefully when necessary.

Common security concerns relate to adversarial examples, data poisoning, and the exfiltration of models, training data, or other intellectual property through AI system endpoints. AI systems that can maintain confidentiality, integrity, and availability through protection mechanisms that prevent unauthorized access and use may be said to be secure.

Security and resilience are related but distinct: resilience is the ability to return to normal function after an unexpected adverse event; security includes resilience but also encompasses protocols to avoid, protect against, respond to, or recover from attacks.

**3.4 Accountable and Transparent**

Transparency reflects the extent to which information about an AI system and its outputs is available to individuals interacting with such a system — regardless of whether they are even aware that they are doing so. Meaningful transparency provides access to appropriate levels of information based on the stage of the AI lifecycle and tailored to the role or knowledge of AI actors.

Trustworthy AI depends upon accountability. Accountability presupposes transparency. Transparency is often necessary for actionable redress related to AI system outputs that are incorrect or otherwise lead to negative impacts.

Transparency, explainability, and interpretability are distinct:
- Transparency can answer the question of "what happened" in the system.
- Explainability can answer the question of "how" a decision was made in the system.
- Interpretability can answer the question of "why" a decision was made by the system.

**Financial AI note (G3):** For financial institutions, transparency obligations align with: loan rejection explanation requirements (EU AI Act Art.86; Korean AI Basic Act §3②); AI disclosure requirements (EU AI Act Art.50; Korean AI Basic Act §31). The NIST framework provides the methodological basis for operationalizing these legal transparency requirements.

**3.5 Explainable and Interpretable**

Explainability refers to a representation of the mechanisms underlying AI systems' operation. Interpretability refers to the meaning of AI systems' output in the context of their designed functional purposes. Together they assist those operating or overseeing an AI system to gain deeper insights into the functionality and trustworthiness of the system.

Explainable systems can be debugged and monitored more easily, and they lend themselves to more thorough documentation, audit, and governance.

Risk from lack of explainability may be managed by describing how AI systems function, with descriptions tailored to individual differences such as the user's role, knowledge, and skill level.

**3.6 Privacy-Enhanced**

Privacy refers generally to the norms and practices that help to safeguard human autonomy, identity, and dignity. Privacy values such as anonymity, confidentiality, and control generally should guide choices for AI system design, development, and deployment.

Privacy-enhancing technologies for AI, as well as data minimizing methods such as de-identification and aggregation for certain model outputs, can support design for privacy-enhanced AI systems.

**3.7 Fair — with Harmful Bias Managed**

Fairness in AI includes concerns for equality and equity by addressing issues such as harmful bias and discrimination. NIST has identified three major categories of AI bias:
- Systemic bias: present in AI datasets, organizational norms, practices, and processes across the AI lifecycle, and the broader society.
- Computational and statistical biases: present in AI datasets and algorithmic processes, often stemming from systematic errors due to non-representative samples.
- Human-cognitive biases: relate to how an individual or group perceives AI system information to make a decision or fill in missing information.

Bias exists in many forms and can become ingrained in the automated systems that help make decisions. AI systems can potentially increase the speed and scale of biases and perpetuate and amplify harms.

**Financial AI note (G2):** For credit scoring and insurance pricing AI, bias in training data can produce discriminatory outcomes in credit approvals or insurance premiums across demographic groups. Both computational bias (unrepresentative training data) and systemic bias (historical discriminatory lending patterns encoded in data) must be assessed and managed.

---

### GOVERN Function — Categories and Subcategories

The GOVERN function cultivates and implements a culture of risk management within organizations designing, developing, deploying, evaluating, or acquiring AI systems. GOVERN is a cross-cutting function that is infused throughout AI risk management and enables the other functions.

**GOVERN 1: Policies, processes, procedures, and practices across the organization related to the mapping, measuring, and managing of AI risks are in place, transparent, and implemented effectively.**

- GOVERN 1.1: Legal and regulatory requirements involving AI are understood, managed, and documented.
- GOVERN 1.2: The characteristics of trustworthy AI are integrated into organizational policies, processes, procedures, and practices.
- GOVERN 1.3: Processes, procedures, and practices are in place to determine the needed level of risk management activities based on the organization's risk tolerance.
- GOVERN 1.4: The risk management process and its outcomes are established through transparent policies, procedures, and other controls based on organizational risk priorities.
- GOVERN 1.5: Ongoing monitoring and periodic review of the risk management process and its outcomes are planned and organizational roles and responsibilities clearly defined, including determining the frequency of periodic review.
- GOVERN 1.6: Mechanisms are in place to inventory AI systems and are resourced according to organizational risk priorities.
- GOVERN 1.7: Processes and procedures are in place for decommissioning and phasing out AI systems safely and in a manner that does not increase risks or decrease the organization's trustworthiness.

**GOVERN 2: Accountability structures are in place so that the appropriate teams and individuals are empowered, responsible, and trained for mapping, measuring, and managing AI risks.**

- GOVERN 2.1: Roles and responsibilities and lines of communication related to mapping, measuring, and managing AI risks are documented and are clear to individuals and teams throughout the organization.
- GOVERN 2.2: The organization's personnel and partners receive AI risk management training to enable them to perform their duties and responsibilities consistent with related policies, procedures, and agreements.
- GOVERN 2.3: Executive leadership of the organization takes responsibility for decisions about risks associated with AI system development and deployment.

**GOVERN 3: Workforce diversity, equity, inclusion, and accessibility processes are prioritized in the mapping, measuring, and managing of AI risks throughout the lifecycle.**

- GOVERN 3.1: Decision-making related to mapping, measuring, and managing AI risks throughout the lifecycle is informed by a diverse team (e.g., diversity of demographics, disciplines, experience, expertise, and backgrounds).
- GOVERN 3.2: Policies and procedures are in place to define and differentiate roles and responsibilities for human-AI configurations and oversight of AI systems.

**GOVERN 4: Organizational teams are committed to a culture that considers and communicates AI risk.**

- GOVERN 4.1: Organizational policies and practices are in place to foster a critical thinking and safety-first mindset in the design, development, deployment, and uses of AI systems to minimize potential negative impacts.
- GOVERN 4.2: Organizational teams document the risks and potential impacts of the AI technology they design, develop, deploy, evaluate, and use, and they communicate about the impacts more broadly.
- GOVERN 4.3: Organizational practices are in place to enable AI testing, identification of incidents, and information sharing.

**GOVERN 5: Processes are in place for robust engagement with relevant AI actors.**

- GOVERN 5.1: Organizational policies and practices are in place to collect, consider, prioritize, and integrate feedback from those external to the team that developed or deployed the AI system regarding the potential individual and societal impacts related to AI risks.
- GOVERN 5.2: Mechanisms are established to enable the team that developed or deployed AI systems to regularly incorporate adjudicated feedback from relevant AI actors into system design and implementation.

**GOVERN 6: Policies and procedures are in place to address AI risks and benefits arising from third-party software and data and other supply chain issues.**

- GOVERN 6.1: Policies and procedures are in place that address AI risks associated with third-party entities, including risks of infringement of a third-party's intellectual property or other rights.
- GOVERN 6.2: Contingency processes are in place to handle failures or incidents in third-party data or AI systems deemed to be high-risk.

**Financial AI note (G4):** GOVERN 1.1 (legal/regulatory requirements) is the primary NIST anchor for multi-regulatory compliance (EU AI Act + Korean AI Basic Act + NIST itself). GOVERN 1.6 (AI inventory) parallels EU AI Act Art.49 registration and Korean AI Basic Act §33 (고영향AI 확인). GOVERN 6 governs vendor AI supply chain risk — critical for banks using third-party credit scoring or insurance pricing AI.

---

### MAP Function — Categories and Subcategories

The MAP function establishes the context to frame risks related to an AI system. Context is recognized and risks related to context are identified.

**MAP 1: Context is established and understood.**

- MAP 1.1: Intended purposes, potentially beneficial uses, context-specific laws, norms and expectations, and prospective settings in which the AI system will be deployed are understood and documented.
- MAP 1.2: Interdisciplinary AI actors, competencies, skills, and capacities for establishing context reflect demographic diversity and broad domain and user experience expertise, and their participation is documented.
- MAP 1.3: The organization's mission and relevant goals for AI technology are understood and documented.
- MAP 1.4: The business value or context of business use has been clearly defined or — in the case of assessing existing AI systems — re-evaluated.
- MAP 1.5: Organizational risk tolerances are determined and documented.
- MAP 1.6: System requirements are elicited from and understood by relevant AI actors. Design decisions take socio-technical implications into account to address AI risks.

**MAP 2: Categorization of the AI system is performed.**

- MAP 2.1: The specific tasks and methods used to implement the tasks that the AI system will support are defined (e.g., classifiers, generative models, recommenders).
- MAP 2.2: Information about the AI system's knowledge limits and how system output may be utilized and overseen by humans is documented.
- MAP 2.3: Scientific integrity and TEVV (Test, Evaluation, Verification, Validation) considerations are identified and documented, including those related to experimental design, data collection and selection (e.g., availability, representativeness, suitability), system trustworthiness, and construct validation.

**MAP 3: AI capabilities, targeted usage, goals, and expected benefits and costs compared with appropriate benchmarks are understood.**

- MAP 3.1: Potential benefits of intended AI system functionality and performance are examined and documented.
- MAP 3.2: Potential costs, including non-monetary costs, which result from expected or realized AI errors or system functionality and trustworthiness — as connected to organizational risk tolerance — are examined and documented.
- MAP 3.3: Targeted application scope is specified and documented based on the system's capability, established context, and AI system categorization.
- MAP 3.4: Processes for operator and practitioner proficiency with AI system performance and trustworthiness — and relevant technical standards and certifications — are defined, assessed, and documented.
- MAP 3.5: Processes for human oversight are defined, assessed, and documented in accordance with organizational policies from the GOVERN function.

**MAP 4: Risks and benefits are mapped for all components of the AI system including third-party software and data.**

- MAP 4.1: Approaches for mapping AI technology and legal risks of its components — including the use of third-party data or software — are in place, followed, and documented, as are risks of infringement of a third party's intellectual property or other rights.
- MAP 4.2: Internal risk controls for components of the AI system, including third-party AI technologies, are identified and documented.

**MAP 5: Impacts to individuals, groups, communities, organizations, and society are characterized.**

- MAP 5.1: Likelihood and magnitude of each identified impact (both potentially beneficial and harmful) based on expected use, past uses of AI systems in similar contexts, public incident reports, feedback from those external to the team that developed or deployed the AI system, or other data are identified and documented.
- MAP 5.2: Practices and personnel for supporting regular engagement with relevant AI actors and integrating feedback about positive, negative, and unanticipated impacts are in place and documented.

**Financial AI note (G1/G2):** MAP 2.3 (TEVV and data representativeness) is the NIST basis for EU AI Act Art.10 data governance and bias examination requirements. MAP 3.5 (human oversight processes) aligns with EU AI Act Art.14 human oversight design and Korean AI Basic Act §34①④. MAP 5.1 (impact characterization) is the NIST basis for the EU AI Act Art.27 Fundamental Rights Impact Assessment.

---

### MEASURE Function — Categories and Subcategories

The MEASURE function employs quantitative, qualitative, or mixed-method tools, techniques, and methodologies to analyze, assess, benchmark, and monitor AI risk and related impacts. Identified risks are assessed, analyzed, or tracked.

**MEASURE 1: Appropriate methods and metrics are identified and applied.**

- MEASURE 1.1: Approaches and metrics for measurement of AI risks enumerated during the MAP function are selected for implementation starting with the most significant AI risks. The risks or trustworthiness characteristics that will not — or cannot — be measured are properly documented.
- MEASURE 1.2: Appropriateness of AI metrics and effectiveness of existing controls are regularly assessed and updated, including reports of errors and potential impacts on affected communities.
- MEASURE 1.3: Internal experts who did not serve as front-line developers for the system and/or independent assessors are involved in regular assessments and updates.

**MEASURE 2: AI systems are evaluated for trustworthy characteristics.**

- MEASURE 2.1: Test sets, metrics, and details about the tools used during TEVV are documented.
- MEASURE 2.2: Evaluations involving human subjects meet applicable requirements (including human subject protection) and are representative of the relevant population.
- MEASURE 2.3: AI system performance or assurance criteria are measured qualitatively or quantitatively and demonstrated for conditions similar to deployment setting(s). Measures are documented.
- MEASURE 2.4: The functionality and behavior of the AI system and its components — as identified in the MAP function — are monitored when in production.
- MEASURE 2.5: The AI system to be deployed is demonstrated to be valid and reliable. Limitations of the generalizability beyond the conditions under which the technology was developed are documented.
- MEASURE 2.6: The AI system is evaluated regularly for safety risks — as identified in the MAP function. The AI system to be deployed is demonstrated to be safe, its residual negative risk does not exceed the risk tolerance, and it can fail safely. Safety metrics reflect system reliability and robustness, real-time monitoring, and response times for AI system failures.
- MEASURE 2.7: AI system security and resilience — as identified in the MAP function — are evaluated and documented.
- MEASURE 2.8: Risks associated with transparency and accountability — as identified in the MAP function — are examined and documented.
- MEASURE 2.9: The AI model is explained, validated, and documented, and AI system output is interpreted within its context — as identified in the MAP function — to inform responsible use and governance.
- MEASURE 2.10: Privacy risk of the AI system — as identified in the MAP function — is examined and documented.
- MEASURE 2.11: Fairness and bias — as identified in the MAP function — are evaluated and results are documented.
- MEASURE 2.12: Environmental impact and sustainability of AI model training and management activities — as identified in the MAP function — are assessed and documented.
- MEASURE 2.13: Effectiveness of the employed TEVV metrics and processes in the MEASURE function are evaluated and documented.

**MEASURE 3: Mechanisms for tracking identified AI risks over time are in place.**

- MEASURE 3.1: Approaches, personnel, and documentation are in place to regularly identify and track existing, unanticipated, and emergent AI risks based on factors such as intended and actual performance in deployed contexts.
- MEASURE 3.2: Risk tracking approaches are considered for settings where AI risks are difficult to assess using currently available measurement techniques or where metrics are not yet available.
- MEASURE 3.3: Feedback processes for end users and impacted communities to report problems and appeal system outcomes are established and integrated into AI system evaluation metrics.

**MEASURE 4: Feedback about efficacy of measurement is gathered and assessed.**

- MEASURE 4.1: Measurement approaches for identifying AI risks are connected to deployment context(s) and informed through consultation with domain experts and other end users. Approaches are documented.
- MEASURE 4.2: Measurement results regarding AI system trustworthiness in deployment context(s) and across the AI lifecycle are informed by input from domain experts and relevant AI actors to validate whether the system is performing consistently as intended.
- MEASURE 4.3: Measurable performance improvements or declines based on consultations with relevant AI actors, including affected communities, and field data about context-relevant risks and trustworthiness characteristics are identified and documented.

**G-axis mapping:**
- G1 (Accuracy): MEASURE 2.3 (performance criteria); MEASURE 2.5 (validity and reliability)
- G2 (Safety): MEASURE 2.6 (safety evaluation); MEASURE 2.11 (fairness/bias)
- G3 (Transparency): MEASURE 2.8 (transparency risks); MEASURE 2.9 (explainability)
- G4 (Compliance): MEASURE 2.1 (TEVV documentation); MEASURE 2.13 (metrics effectiveness)

---

### MANAGE Function — Categories and Subcategories

The MANAGE function entails allocating risk resources to mapped and measured risks on a regular basis. Risks are prioritized and acted upon based on a projected impact.

**MANAGE 1: AI risks based on assessments and other analytical output from the MAP and MEASURE functions are prioritized, responded to, and managed.**

- MANAGE 1.1: A determination is made as to whether the AI system achieves its intended purposes and stated objectives and whether its development or deployment should proceed.
- MANAGE 1.2: Treatment of documented AI risks is prioritized based on impact, likelihood, and available resources or methods.
- MANAGE 1.3: Responses to the AI risks deemed high priority, as identified by the MAP function, are developed, planned, and documented. Risk response options can include mitigating, transferring, avoiding, or accepting.
- MANAGE 1.4: Negative residual risks (defined as the sum of all unmitigated risks) to both downstream acquirers of AI systems and end users are documented.

**MANAGE 2: Strategies to maximize AI benefits and minimize negative impacts are planned, prepared, implemented, documented, and informed by input from relevant AI actors.**

- MANAGE 2.1: Resources required to manage AI risks are taken into account — along with viable non-AI alternative systems, approaches, or methods — to reduce the magnitude or likelihood of potential impacts.
- MANAGE 2.2: Mechanisms are in place and applied to sustain the value of deployed AI systems.
- MANAGE 2.3: Procedures are followed to respond to and recover from a previously unknown risk when it is identified.
- MANAGE 2.4: Mechanisms are in place and applied, and responsibilities are assigned and understood, to supersede, disengage, or deactivate AI systems that demonstrate performance or outcomes inconsistent with intended use.

**MANAGE 3: AI risks and benefits from third-party entities are managed.**

- MANAGE 3.1: AI risks and benefits from third-party resources are regularly monitored, and risk controls are applied and documented.
- MANAGE 3.2: Pre-trained models which are used for development are monitored as part of AI system regular monitoring and maintenance.

**MANAGE 4: Risk treatments, including response and recovery, and communication plans for the identified and measured AI risks are documented and monitored regularly.**

- MANAGE 4.1: Post-deployment AI system monitoring plans are implemented, including mechanisms for capturing and evaluating input from users and other relevant AI actors, appeal and override, decommissioning, incident response, recovery, and change management.
- MANAGE 4.2: Measurable activities for continual improvements are integrated into AI system updates and include regular engagement with interested parties, including relevant AI actors.
- MANAGE 4.3: Incidents and errors are communicated to relevant AI actors, including affected communities. Processes for tracking, responding to, and recovering from incidents and errors are followed and documented.

**Financial AI note (G2/G4):** MANAGE 4.1 (post-deployment monitoring) aligns with EU AI Act Art.72 post-market monitoring requirements. MANAGE 4.3 (incident communication) aligns with EU AI Act Art.73 serious incident reporting (15-day reporting timeline) and Korean AI Basic Act §32①② (risk management system including safety incident monitoring). MANAGE 2.4 (deactivation capability) supports EU AI Act Art.14(4)(e) stop-button requirement.

---

### Appendix B — How AI Risks Differ from Traditional Software Risks

AI-specific risks that are new or increased compared to traditional software include:

- The data used for building an AI system may not be a true or appropriate representation of the context or intended use; the ground truth may not exist or not be available.
- AI system dependency and reliance on data for training tasks, combined with increased volume and complexity.
- Intentional or unintentional changes during training may fundamentally alter AI system performance.
- Datasets used to train AI systems may become detached from their original and intended context or become stale relative to deployment context (data drift, model drift).
- Higher degree of difficulty in predicting failure modes for emergent properties of large-scale pre-trained models.
- Privacy risk due to enhanced data aggregation capability.
- AI systems may require more frequent maintenance due to data, model, or concept drift.
- Increased opacity and concerns about reproducibility.
- Computational costs for developing AI systems and their impact on the environment.

Existing frameworks and guidance are unable to: adequately manage the problem of harmful bias in AI systems; confront the challenging risks related to generative AI; comprehensively address security concerns related to evasion, model extraction, membership inference; account for the complex attack surface of AI systems.

**Financial AI note:** Model drift is a particularly important AI-specific risk for credit scoring AI. As economic conditions change (post-pandemic shifts, interest rate cycles), credit risk models trained on historical data can produce increasingly inaccurate predictions — a risk not adequately captured by traditional model risk management focused on static model validation.

---

### Appendix C — AI Risk Management and Human-AI Interaction

Issues that merit consideration in human-AI interaction:

1. Human roles and responsibilities in decision making and overseeing AI systems need to be clearly defined and differentiated. Human-AI configurations can span from fully autonomous to fully manual.

2. Decisions that go into the design, development, deployment, evaluation, and use of AI systems reflect systemic and human cognitive biases. AI actors bring their cognitive biases into the process.

3. Human-AI interaction results vary. Under certain conditions — for example, in perceptual-based judgment tasks — the AI part of the human-AI interaction can amplify human biases, leading to more biased decisions than the AI or human alone.

4. Presenting AI system information to humans is complex. Humans perceive and derive meaning from AI system output and explanations in different ways.

The GOVERN function provides organizations with the opportunity to clarify and define the roles and responsibilities for the humans in the Human-AI team configurations and those who are overseeing the AI system performance.

**Financial AI note (G2):** Automation bias — the tendency to over-rely on AI output — is explicitly identified in NIST Appendix C and mirrored in EU AI Act Art.14(4)(b). Financial institutions must design loan officer oversight processes that actively counter automation bias, including training, override processes, and regular review of override rates.

---

### AI RMF Profiles

AI RMF use-case profiles are implementations of the AI RMF functions, categories, and subcategories for a specific setting or application based on the requirements, risk tolerance, and resources of the Framework user.

AI RMF temporal profiles are descriptions of either the current state or the desired, target state of specific AI risk management activities within a given sector, industry, organization, or application context. Comparing Current and Target Profiles likely reveals gaps to be addressed to meet AI risk management objectives.

AI RMF cross-sectoral profiles cover risks of models or applications that can be used across use cases or sectors — for example, how to govern, map, measure, and manage risks for the use of large language models or cloud-based services.

This Framework does not prescribe profile templates, allowing for flexibility in implementation.

---

*Source: NIST AI 100-1, January 2023*
*U.S. Department of Commerce, National Institute of Standards and Technology*
*Version: v1.0-complete (RAG-ready)*
*Coverage: Executive Summary, Part 1 (Sections 1-3), Part 2 (GOVERN, MAP, MEASURE, MANAGE), Appendices B-C*
*Chunking guide: split on "### " headers for RAG TextLoader*
