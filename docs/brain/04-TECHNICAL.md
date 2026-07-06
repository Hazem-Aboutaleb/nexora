# TECHNICAL

## Project Architecture

The project follows a modular architecture.

Every feature should be isolated.

Shared code should remain inside shared modules.

Core services should remain independent from business features.

---

# Tech Stack

## Frontend

- Flutter
- Dart

---

## Backend

- Python
- FastAPI

---

## AI

- OpenCV
- YOLO

Future:

- ONNX Runtime
- TensorRT
- LLM Integration

---

## Database (Future)

SQLite (Development)

PostgreSQL (Production)

Redis (Caching)

---

## Communication

REST API

Future:

WebSocket

gRPC

---

# Repository Structure

nexora/

apps/

desktop/

mobile/

web/

services/

shared/

assets/

docs/

scripts/

---

# Flutter Structure

lib/

core/

features/

shared/

main.dart

---

# Core Folder

Contains:

- Constants
- Theme
- Routes
- Services
- Utilities

---

# Features Folder

Each feature lives independently.

Example:

connection/

search/

analytics/

settings/

dashboard/

---

# Shared Folder

Reusable code.

Examples:

Widgets

Models

Helpers

Extensions

---

# Git Strategy

Main Branch

main

Commit Format

docs:

feat:

fix:

refactor:

style:

test:

chore:

Example:

feat: add DVR connection screen

fix: camera discovery issue

docs: update roadmap

---

# Development Workflow

Plan

↓

Document

↓

Implement

↓

Analyze

↓

Test

↓

Commit

↓

Push

---

# Code Rules

Keep files small.

Keep widgets reusable.

Avoid duplicated code.

Separate UI from logic.

Prefer readability.

---

# Quality Rules

flutter analyze must pass.

flutter test must pass.

No code is committed with errors.

---

# Current Folder Structure

apps/

desktop/

Flutter Desktop App

mobile/

Reserved

web/

Reserved

services/

Future AI Services

shared/

Future Shared Libraries

docs/

Project Documentation

assets/

Images, Icons, Fonts

scripts/

Automation Scripts

---

# Future Services

camera-engine

ai-engine

analytics-engine

search-engine

---

# Long-Term Technical Vision

Desktop

↓

Backend

↓

AI Engine

↓

Cloud Synchronization

↓

Enterprise Deployment