# ----------------------------------------------------------
# .NET multi-platform build notes
# ----------------------------------------------------------
# Because of .NET, we always build on amd64 and target
# platforms explicitly. QEMU for ARM is not supported.
# For more info: 
# https://github.com/dotnet/dotnet-docker/issues/1537
# ----------------------------------------------------------

# Build stage: compile for the target platform
FROM --platform=${BUILDPLATFORM} mcr.microsoft.com/dotnet/sdk:7.0 AS build
ARG TARGETPLATFORM
ARG TARGETARCH
ARG BUILDPLATFORM

# Print build info
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

WORKDIR /source

# Copy project file and restore dependencies
COPY *.csproj .
RUN dotnet restore -a $TARGETARCH

# Copy all source and publish
COPY . .
RUN dotnet publish -c Release -o /app -a $TARGETARCH --self-contained false --no-restore

# ----------------------------------------------------------
# Runtime stage: minimal image
# ----------------------------------------------------------
FROM mcr.microsoft.com/dotnet/runtime:7.0 AS final
WORKDIR /app

# Copy published app from build stage
COPY --from=build /app .

# Set entrypoint
ENTRYPOINT ["dotnet", "Worker.dll"]
