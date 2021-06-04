from golang:1.11-alpine AS build

maintainer kevin,lee <hylee@dshub.cloud>
label "purpose"="Go Application Service Deployment"

workdir /src/
copy main.go go.* /src/
from scratch
copy --from=build /bin/demo /bin/demo
entrypoint ["/bin/demo"]
