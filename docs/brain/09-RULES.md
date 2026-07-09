# Nexora Development Rules

This file is the official development rules for the project.

---

# Architecture

- Feature First Architecture.
- Clean Architecture.
- Production Ready code only.
- No Demo Code.
- No temporary solutions.

---

# Core Entity

VideoSource

Supported types:

- DVR
- NVR
- RTSP
- IP Camera
- Video File
- USB Camera
- Cloud Stream (Future)

---

# Layer Order

Presentation

↓

Domain

↓

Data

Business Logic never exists inside UI.

---

# Development Workflow

Business Goal

↓

Technical Specification

↓

Implementation

↓

flutter analyze

↓

Review

↓

Commit

↓

Push

---

# Communication Rules

- Short responses.
- Explain only when necessary.
- Return complete files instead of partial edits.
- If an existing file needs modification, always rewrite the entire file.
- Use PowerShell commands on Windows.
- Do not change architecture or folder structure unless explicitly requested.

---

# Sprint Rules

- Finish the current task before starting another.
- Do not skip tasks.
- Every task must end with:
  - flutter analyze
  - Commit
  - Push

---

# Project Memory

The `brain` folder is the official source of truth.

Every new conversation must start by reading the entire `brain` folder before continuing development.