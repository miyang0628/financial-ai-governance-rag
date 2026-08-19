# Brazil PL 2338/2023 — Key Articles for Financial AI Governance Research
# Projeto de Lei nº 2.338, de 2023 (Marco Legal da Inteligência Artificial)
# "Dispõe sobre o uso da Inteligência Artificial"
# Legislative status: Approved by the Federal Senate on 2024-12-10; under review in the
#   Chamber of Deputies (Câmara dos Deputados). NOT yet enacted. Provisions may change.
# Analysis snapshot: Senate-approved consolidated text (Avulso do PL 2338/2023, 33 pp.)
# Competent Authority: to be designated by the Executive (Art. 32); ANPD positioned as coordinator
# Source: Senado Federal official PDF (legis.senado.leg.br, dm=9347622)
# Translation: AI-assisted draft from the official Portuguese text; provisions cited as
#   legal_basis in the Q&A set MUST be author-verified against the Portuguese original.
#   Provisions still needing verification are marked ⚠VERIFY.
# RAG chunking: split on "### Article" headers

---

### Overview — Brazil PL 2338/2023

**Legal status:** Near-enacted bill (projeto de lei). Approved by the Senate on 2024-12-10; pending Chamber of Deputies vote and presidential sanction. This corpus reflects the Senate-approved consolidated text and is used as the *newest / least-exposed* point on the pre-training exposure spectrum. Chamber amendments may alter specific provisions.

**Regulatory model:** Risk-based (baseada em riscos) and rights-based (fundada em direitos), closely paralleling the EU AI Act structure: preliminary self-assessment (avaliação preliminar), a prohibited tier (risco excessivo), and a high-risk tier (alto risco) with mandatory governance obligations.

**Effective date:** One year after publication (Art. 45) — not yet triggered, as the bill is not enacted.

**Purpose (Art. 1):** Establishes national general rules for the responsible development, implementation, and use of AI systems in Brazil, to protect fundamental rights and ensure safe and trustworthy systems, for the benefit of the human person, the democratic regime, and scientific and technological development.

**Key financial AI provision:** Art. 17, item V explicitly classifies as **high-risk** AI systems used for "evaluation of the debt-capacity of natural persons or establishment of their credit classification" (avaliação da capacidade de endividamento das pessoas naturais ou estabelecimento de sua classificação de crédito). This is the primary legal basis for treating credit-scoring AI as high-risk under the Brazilian bill. Recruitment/employment AI is high-risk under Art. 17, item III.

**Comparison with EU AI Act:** Both are mandatory (once enacted) and risk-based. Brazil uses "alto risco" corresponding to EU "high-risk," and "risco excessivo" corresponding to EU "prohibited practices." Unlike the EU Act's Annex III, Brazil places credit scoring squarely in the high-risk list (Art. 17 V). Brazilian penalties reach up to BRL 50,000,000 per infraction or 2% of Brazilian-group turnover (Art. 36 II) — lower than the EU's EUR 35M / 7% ceiling.

**Comparison with Korean AI Basic Act:** Both classify credit/lending AI as their highest regulated tier (Brazil "alto risco" Art. 17 V; Korea "High-Impact" Art. 2(4)). Both impose human oversight, transparency, documentation, and impact-assessment duties.

---

### Article 1 — Purpose

This Law establishes national general rules for the responsible development, implementation, and use of artificial intelligence (AI) systems in Brazil, with the objective of protecting fundamental rights and guaranteeing the implementation of safe and trustworthy systems, for the benefit of the human person, the democratic regime, and scientific and technological development.

---

### Article 2 — Foundations

The development, implementation, and use of AI systems in Brazil are grounded in: (I) the centrality of the human person; (II) respect for human rights and democratic values; (III) free development of personality; (IV) environmental protection and sustainable development; (V) equality, non-discrimination, plurality, and respect for labor rights; (VI) technological development and innovation; (VII) free enterprise, free competition, and consumer protection; (VIII) privacy, data protection, and informational self-determination; (IX) promotion of research and development to stimulate innovation; and (X) access to information and education, and awareness of AI systems and their applications.

---

### Article 3 — Principles

Development, implementation, and use of AI systems shall observe good faith and the following principles: (I) inclusive growth, sustainable development, and well-being; (II) self-determination and freedom of decision and choice; (III) human participation in the AI lifecycle and effective human oversight; (IV) non-discrimination; (V) justice, equity, and inclusion; (VI) transparency, explainability, intelligibility, and auditability; (VII) reliability and robustness of AI systems and information security; (VIII) due process, contestability, and adversarial procedure; (IX) traceability of decisions across the AI lifecycle as a means of accountability; (X) accountability, liability, and full reparation of damages; (XI) prevention, precaution, and mitigation of systemic risks; and (XII) non-maleficence and proportionality between the methods employed and the legitimate purposes of the AI systems.

---

### Article 4 — Definitions

For the purposes of this Law: (I) **AI system** — a computational system, with varying degrees of autonomy, designed to infer how to achieve a given set of objectives, using machine-learning and/or logic- and knowledge-representation approaches, from input data, to produce predictions, recommendations, or decisions that may influence the virtual or real environment; (II) **provider (fornecedor)** — a natural or legal person, public or private, that develops an AI system, directly or by commission, to place it on the market or apply it in a service under its own name or brand; (III) **operator (operador)** — a natural or legal person, public or private, that uses an AI system in its name or benefit, except where used in a non-professional personal activity; (IV) **AI agents (agentes de IA)** — providers and operators of AI systems; (V) **competent authority** — the federal public-administration body responsible for overseeing and enforcing this Law; (VI) **discrimination** — any distinction, exclusion, restriction, or preference whose purpose or effect is to nullify or restrict, on unequal terms, rights or freedoms, based on personal characteristics such as geographic origin, race, color, ethnicity, gender, sexual orientation, socioeconomic class, age, disability, religion, or political opinion; (VII) **indirect discrimination**; (VIII) **text and data mining**.

> Financial-AI relevance: "operador" is the analogue of the EU "deployer." A bank using a vendor credit-scoring model is an *operador* of a high-risk system. ⚠VERIFY exact operador/deployer mapping before citing in ground truth.

---

### Article 5 — Rights of Affected Persons (General)

Persons affected by AI systems have the following rights: (I) prior information about their interactions with AI systems; (II) explanation of the decision, recommendation, or prediction made by AI systems; (III) to contest decisions or predictions producing legal effects or significantly affecting their interests; (IV) to human determination and participation in AI decisions, considering the context and the state of the art; (V) non-discrimination and correction of discriminatory bias (direct, indirect, illegal, or abusive); and (VI) privacy and personal-data protection. Sole paragraph: AI agents shall inform, clearly and accessibly, the procedures for exercising these rights.

---

### Article 7 — Right to Prior Information

Persons affected by AI systems have the right to receive, prior to contracting or using the system, clear and adequate information on: (I) the automated character of the interaction and decision; (II) a general description of the system, the types of decisions/recommendations/predictions it makes, and consequences of use; (III) identification of the operators and governance measures adopted; (IV) the role of the AI system and of the humans involved in decision-making; (V) categories of personal data used; (VI) security, non-discrimination, and reliability measures adopted, including accuracy, precision, and coverage; and (VII) other information defined in regulation.

> Financial-AI relevance: transparency-to-customer basis for credit decisions. Maps to G3.

---

### Article 8 — Right to Explanation

An affected person may request an explanation of the decision, prediction, or recommendation, including information on: (I) the rationale and logic of the system, meaning, and foreseen consequences of the decision; (II) the degree and level of the AI system's contribution to decision-making; (III) the data processed and its source, the decision criteria and, where appropriate, their weighting, as applied to the person's situation; (IV) the mechanisms by which the person may contest the decision; and (V) the possibility of requesting human intervention. Sole paragraph: information provided free of charge, in accessible language, within fifteen (15) days of the request, extendable once for an equal period depending on complexity.

> Financial-AI relevance: explanation of an adverse credit decision. Maps to G3. ⚠VERIFY 15-day deadline wording.

---

### Article 9 — Right to Contest and Request Human Review

An affected person has the right to contest and request review of decisions, recommendations, or predictions producing relevant legal effects or significantly affecting their interests. §1 guarantees correction of incomplete, inaccurate, or outdated data (cross-referencing Art. 18 of the LGPD, Law 13.709/2018). §2 extends contestation to decisions based on discriminatory, unreasonable, or bad-faith inferences, including inferences: (I) founded on inadequate or abusive data; (II) based on imprecise or statistically unreliable methods; or (III) that fail to adequately consider individual characteristics.

---

### Article 10 — Right to Human Intervention

Where an AI decision, prediction, or recommendation produces relevant legal effects or significantly affects a person's interests — including through profiling and inference — the person may request human intervention or review. Sole paragraph: human intervention is not required where its implementation is provably impossible, in which case the operator implements effective alternative measures to re-analyze the contested decision and repair any damages.

> Financial-AI relevance: strong human-oversight basis for lending decisions. Maps to G2.

---

### Article 11 — Significant Human Involvement for High-Impact Decisions

In scenarios where AI-generated decisions/predictions/recommendations have irreversible or hard-to-reverse impact, or involve risks to life or physical integrity, there shall be significant human involvement in the decision process and a final human determination.

---

### Article 12 — Non-Discrimination

Persons affected by AI decisions have the right to fair and isonomic treatment; the implementation and use of AI systems that may cause direct, indirect, illegal, or abusive discrimination are prohibited, including: (I) through the use of sensitive personal data or disproportionate impacts based on personal characteristics; or (II) through establishing disadvantages or aggravating vulnerability of persons in a specific group, even using apparently neutral criteria. Sole paragraph: differentiation is permitted where based on demonstrated, reasonable, and legitimate objectives consistent with equality and other fundamental rights.

> Financial-AI relevance: fairness/bias basis for credit models. Maps to G2. Parallels EU AI Act Art. 10(2)(f).

---

### Article 13 — Preliminary Risk Assessment

Prior to market placement or use in service, every AI system shall undergo a preliminary assessment by the provider to classify its risk degree. §1: general-purpose AI providers include intended purposes/applications. §2: the preliminary assessment is documented for accountability where the system is not classified as high-risk. §3: the competent authority may order reclassification and an algorithmic impact assessment. §4: if reclassified as high-risk, an algorithmic impact assessment and the Chapter IV governance measures become mandatory, without prejudice to penalties for fraudulent or false preliminary assessment.

> Financial-AI relevance: the self-classification gateway. Maps to G4.

---

### Article 14 — Excessive-Risk (Prohibited) AI Systems

The implementation and use of AI systems are prohibited where they: (I) employ subliminal techniques that induce a natural person to behave in a manner harmful to health or safety or against this Law's foundations; (II) exploit vulnerabilities of specific groups (e.g., age, physical or mental disability) to induce harmful behavior; (III) are used by the public power to evaluate, classify, or rank natural persons based on social behavior or personality attributes, through universal scoring, for access to goods, services, and public policies, in an illegitimate or disproportionate manner.

> Financial-AI relevance: item III is a "social scoring" prohibition applying to the *public power*; private credit scoring is high-risk (Art. 17 V), NOT prohibited. ⚠VERIFY this public/private distinction before writing any ground truth that hinges on it.

---

### Article 17 — High-Risk AI Systems (List)

AI systems are considered high-risk when used for the following purposes: (I) safety devices in the management/operation of critical infrastructure (e.g., traffic control, water and electricity supply); (II) education and vocational training, including access determination and student assessment/monitoring; (III) recruitment, screening, filtering, candidate evaluation, decisions on promotions or termination of employment contracts, task allocation, and performance/behavior evaluation in employment and worker management; (IV) evaluation of access, eligibility, granting, review, reduction, or revocation of essential private and public services, including eligibility for public assistance and social-security benefits; (V) **evaluation of the debt-capacity of natural persons or establishment of their credit classification**; (VI) dispatch/prioritization of emergency-response services; (VII) administration of justice; (VIII) autonomous vehicles where use may create physical risk; (IX) health applications, including diagnostic and medical-procedure support; (X) biometric identification systems; (XI) criminal investigation and public security individual risk assessments; (XII) analytical crime study; (XIII) administrative investigation for evidence-credibility assessment; and (XIV) migration management and border control.

> Financial-AI relevance: **item V is the core financial provision — credit scoring / debt-capacity evaluation is high-risk.** Item III covers recruitment. Insurance pricing is NOT explicitly listed (contrast with EU Annex III Art. 5(c)) — ⚠VERIFY whether insurance falls under item IV "essential services" before writing insurance-domain ground truth.

---

### Article 18 — Authority's Power to Update the Risk Lists

The competent authority shall update the lists of excessive-risk and high-risk AI systems based on at least one of the following criteria: (I) large-scale implementation (number of persons affected, geographic extent, duration, frequency); (II) potential negative impact on rights, freedoms, or use of a service; (III) high potential for material or moral harm, or discriminatory harm; (IV) effect on a specific vulnerable group; (V) irreversible or hard-to-reverse harmful outcomes; (VI) prior similar system having caused harm; (VII) low transparency/explainability/auditability; (VIII) high identifiability of data subjects (including genetic/biometric data); (IX) reasonable expectations of confidentiality. Sole paragraph: updates are preceded by consultation with the sectoral regulator, public consultation and hearing, and regulatory-impact analysis.

> Financial-AI relevance: mechanism by which insurance-pricing or other financial AI could later be added to the high-risk list. Maps to G4.

---

### Article 19 — General Governance Measures (All Risk Levels)

AI agents shall establish governance structures and internal processes ensuring system security and the rights of affected persons, including at least: (I) transparency measures regarding AI use in interactions with natural persons (clear, informative human-machine interfaces); (II) transparency about governance measures adopted; (III) adequate data-management measures to mitigate and prevent discriminatory bias; (IV) legitimation of data processing under data-protection law, including privacy by design and by default and data minimization; (V) adequate separation and organization of data for training, testing, and validation; and (VI) adequate information-security measures from design to operation. §1: measures apply across the full lifecycle. §2: technical documentation of high-risk systems is prepared before market availability and kept updated during use.

> Financial-AI relevance: baseline documentation/data-governance duties. Maps to G1/G3.

---

### Article 20 — Additional Governance Measures for High-Risk AI

In addition to Art. 19, agents providing or operating high-risk systems shall adopt: (I) documentation on system functioning and design/implementation/use decisions across the lifecycle; (II) automatic operation-logging tools to assess accuracy and robustness and detect discriminatory potential, with mitigation measures; (III) reliability testing appropriate to the sector and application (robustness, accuracy, precision, coverage); (IV) data-management measures to mitigate discriminatory bias, including (a) bias evaluation and corrective measures, and (b) an inclusive design/development team oriented toward diversity; and (V) technical measures to enable explainability of results and to make available general information on the model's functioning, logic, and relevant criteria, and — upon request — adequate information allowing interpretation of concrete results, respecting industrial and commercial secrecy.

Sole paragraph — **human oversight** of high-risk systems seeks to prevent or minimize risks, enabling those responsible to: (I) understand the system's capacities and limitations and duly control its functioning so anomalies and unexpected performance can be identified and resolved quickly; (II) be aware of automation/over-reliance bias; (III) correctly interpret the system's output; (IV) decide, in any specific situation, not to use the high-risk system or to disregard, override, or reverse its output; and (V) intervene in or interrupt the system's operation.

> Financial-AI relevance: **core high-risk obligations for a bank operating a credit-scoring model** — documentation, logging, bias testing, explainability, human oversight. Maps to G1 (risk/data governance), G2 (oversight, bias), G3 (explainability). Parallels EU AI Act Arts. 9–15.

---

### Article 22 — Algorithmic Impact Assessment (AIA)

The algorithmic impact assessment is an obligation of AI agents whenever the system is classified as high-risk by the preliminary assessment. Sole paragraph: the competent authority is notified about the high-risk system through the sharing of the preliminary and impact assessments.

> Financial-AI relevance: mandatory AIA for credit-scoring AI. Maps to G4. Parallels EU AI Act Art. 27 (FRIA) and Korean AI Basic Act Art. 35.

---

### Article 23 — Who Conducts the AIA

The algorithmic impact assessment shall be carried out by a professional or team with the necessary technical, scientific, and legal knowledge and functional independence. Sole paragraph: the competent authority regulates cases where the assessment or its audit must be conducted by professionals external to the provider.

---

### Article 24 — AIA Methodology

The impact-assessment methodology shall contain at least: (I) preparation; (II) risk cognition; (III) mitigation of identified risks; (IV) monitoring. §1 requires recording at least: known and foreseeable risks; benefits; probability of adverse consequences (including number of persons impacted); severity of adverse consequences; system logic; test/evaluation results and mitigation for rights impacts, especially discriminatory ones; training and awareness actions; mitigation measures and residual-risk justification with frequent quality-control tests; and public transparency about residual risks. §2 (precaution) requires considering incipient/incomplete/speculative evidence for irreversible-impact systems. §3–§4: the authority may set further criteria and update periodicity. §5: agents becoming aware of unexpected risk after deployment must immediately notify the competent authority and affected persons.

> Financial-AI relevance: detailed AIA content requirements for lending AI. Maps to G1/G4.

---

### Article 26 — Publicity of AIA Conclusions

Safeguarding industrial and commercial secrets, the conclusions of the impact assessment shall be public, containing at least: (I) description of the intended purpose, context of use, and territorial/temporal scope; (II) risk-mitigation measures and residual risk level; and (III) description of the participation of affected segments, if any.

---

### Article 27 — Civil Liability

A provider or operator of an AI system that causes patrimonial, moral, individual, or collective damage is obligated to fully repair it, regardless of the system's degree of autonomy. §1: for high-risk or excessive-risk systems, the provider or operator responds **objectively** (strict liability) for damages, to the extent of their participation. §2: for non-high-risk systems, the agent's fault is presumed, with reversal of the burden of proof in favor of the victim.

> Financial-AI relevance: strict liability attaches to high-risk credit-scoring AI. ⚠VERIFY strict-liability scope before ground truth that turns on it.

---

### Article 31 — Communication of Serious Incidents

AI agents shall communicate to the competent authority the occurrence of serious security incidents, including risk to life and physical integrity, interruption of critical-infrastructure operations, serious property or environmental damage, or serious violations of fundamental rights, per regulation. §1: communication within a reasonable period defined by the authority. §2: the authority verifies severity and may order corrective/mitigation measures.

> Financial-AI relevance: incident-reporting duty. Maps to G2. Parallels EU AI Act Art. 73 and Korean AI Basic Act Art. 32.

---

### Article 32 — Competent Authority and Its Powers

The Executive shall designate a competent authority to oversee and enforce this Law. Sole paragraph — the authority shall, among other duties: protect fundamental rights affected by AI; develop and implement the Brazilian AI Strategy; study best practices; encourage codes of conduct; cooperate internationally; issue implementing regulations (including on rights procedures, AIA requirements, transparency, and high-risk certification); coordinate with sectoral regulators; oversee disclosure under Arts. 7 and 43; and inspect and apply sanctions through due administrative process.

> Financial-AI relevance: §VII coordination with sectoral (financial) regulators — analogous to the EU AI Act Art. 9(10) financial-sector equivalence logic. ⚠VERIFY article-item numbering (Art. 32 sole-paragraph items) before citing.

---

### Article 34 — Coordination with Sectoral Regulators

The competent authority and the public bodies responsible for regulating specific economic and governmental sectors shall coordinate their activities to ensure compliance with this Law. §1: a permanent communication forum, including technical cooperation, with sectoral regulators. §2: in regulatory sandboxes involving AI conducted by sectoral regulators, the competent authority is notified and may comment on compliance with this Law's purposes and principles.

> Financial-AI relevance: the mechanism by which the Brazilian Central Bank / financial regulators interface with AI governance. Maps to G4.

---

### Article 36 — Administrative Sanctions

AI agents are subject to the following administrative sanctions applied by the competent authority: (I) warning; (II) **simple fine, limited in total to BRL 50,000,000 (fifty million reais) per infraction**, and, for private legal persons, up to **2% of Brazilian-group turnover** in the last financial year (excluding taxes); (III) publicizing the infraction; (IV) prohibition/restriction from the regulatory sandbox for up to five years; (V) partial or total, temporary or definitive suspension of development, provision, or operation of the AI system; and (VI) prohibition of processing certain databases. §1 lists dosimetry criteria (gravity, good faith, advantage obtained, economic condition, recidivism, degree of harm, cooperation, governance-program adoption, corrective measures, proportionality). §4: for excessive-risk systems, at minimum a fine and, for legal persons, suspension of activities. §5: sanctions do not exclude the obligation of full damage reparation (Art. 27).

> Financial-AI relevance: penalty ceiling for financial-AI non-compliance. Maps to G4. Contrast: EU up to EUR 35M / 7%; Korea KRW 30M; Brazil BRL 50M / 2%.

---

### Article 45 — Entry into Force

This Law enters into force one year after its publication. (Not yet triggered — the bill has not completed the legislative process.)

---
