# Studio Operating Principles

These are the stable rules that govern AI-assisted development across the studio.

## 1. Consistency beats cleverness

Repeatable patterns compound. Use the studio's standard stack, folder conventions, documentation patterns, and deployment habits unless there is a specific documented reason to deviate.

## 2. Launch-worthy is not bare-minimum

A product must be credible against the established alternative users already know. The goal is not to ship the smallest thing possible; the goal is to ship the smallest version that feels serious, trustworthy, and worth using.

## 3. Build foundations before features

Reusable infrastructure pays back across projects. Establish the project structure, design tokens, auth/payment patterns when needed, data model, deployment path, and monitoring before piling on advanced features.

## 4. The product owner is the constraint

AI builders will gladly overbuild. The human product owner must say no, reduce scope, choose priorities, test results, and protect the product from unnecessary complexity.

## 5. Brands are separate; infrastructure is shared

Each brand gets its own identity, audience, domain, analytics surface, email list, policies, and data boundary. Shared infrastructure patterns reduce friction, but user data and consent contexts remain separate.

## 6. Document decisions, not just code

When a non-obvious decision is made, record what was decided and why. Future sessions need the reasoning, not just the outcome.

## 7. Validate technical assumptions early

For proven markets, the audience may already exist. The dangerous unknown is usually whether the technical engine, workflow, data model, AI prompt, or integration actually works. Test those assumptions before building polish around them.

## 8. Design quality and engineering quality must match

A strong brand on a weak technical foundation damages trust. A technically sound product with generic visuals also damages trust. Build the product to the level implied by the brand.

## 9. Keep vendors replaceable

Use vendors, but avoid shaping the whole system around an irreversible dependency. Abstract critical integrations enough that a future replacement is a contained project.

## 10. Prefer in-repo truth

Project-operational truth belongs near the code. Use in-repo Markdown for project memory, build instructions, handoffs, decisions, and specifications.

## 11. Temporary facts belong in temporary files

Deadlines, current priorities, project percentages, machine status, active subscriptions, and model availability change. Keep them out of reusable studio rules. Put them in clearly labeled current-state files when needed.

## 12. Medical, legal, financial, and regulated claims need special handling

If a project touches health, wellness, legal agreements, money, credentials, privacy, children, or regulated professions, create a project-specific `CLAIMS_AND_COMPLIANCE.md` or equivalent before writing public copy or building user flows.
