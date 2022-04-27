## Monorepo

**Supported Language and Frameworks**

- Java and Spring
- Go and Mux
- Node and React
- Python and Proto/FastAPI

** CI/CD Support**
- Docker image
- K8s Deployment

### Generate go repositories

```bash
bazel run //:gazelle -- update-repos -from_file=go.mod -to_macro=deps.bzl%go_dependencies
```