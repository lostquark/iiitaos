# OS Identification: Leveraging Machine Learning for Enhanced Network Security

## Problem Statement
The objective of this project is to develop and validate an effective OS fingerprinting model for IoT and networked devices using machine learning.

We aim to create a hybrid fingerprinting system that combines passive and active fingerprinting techniques to:

- Identify the Operating System (OS) and its specific version  
- Perform Vulnerability Assessment  
- Support Intrusion Detection Systems (IDS)

---

## Project Overview: Why OS Fingerprinting?
- Helps in vulnerability detection and threat mitigation  
- Enables network administrators to identify unauthorized or insecure devices  
- Supports adaptive security systems by detecting OS-level characteristics  

---

## Dataset
We used the Nikolait’s dataset, containing around 12,000 TCP/IP packet entries, covering a wide range of attributes such as:
- ip_checksum  
- ip_id  
- ip_total_length  
- ip_ttl  
- tcp_checksum  
- tcp_off  
- tcp_seq  
- tcp_window_size  

---

## Feature Selection
We employed Recursive Feature Elimination (RFE) with a Random Forest Classifier (RFC) to identify the most relevant attributes for OS classification.

---

## Model and Performance
**Algorithm Used:** Random Forest Classifier  
**Input Data:** TCP/IP packet-level data  

Performance:
- Previous accuracy: 78.06%  
- Current model accuracy: 82.29%  

---

## Limitations
- Passive OS Fingerprinting Dependency — limited by available traffic patterns  
- Active Fingerprinting Speed — slower in large-scale scanning  
