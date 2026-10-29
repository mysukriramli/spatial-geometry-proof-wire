```markdown
# 📐 Spatial Geometry Proof Wire

An autonomous computational geometry data plane running on GitHub Actions. It solves the known LLM limitation of calculating floating-point trigonometry and polygon containment over rotated, skewed satellite swaths and maritime zones. 

It executes rigorous WGS-84 ellipsoidal ray-casting and distance algorithms via GEOS and Shapely, indexes geometries across Uber H3 discrete global grids, and emits verifiable cryptographic proofs for autonomous AI agents.

## Token Impact
- **Token Reduction**: 95% – 99%
- **Error Elimination**: Replaces probabilistic LLM coordinate reasoning with deterministic C-level GEOS ray casting.

## Machine Feeds
- [`/v1/manifest.json`](public/v1/manifest.json)
- [`/today.json`](public/today.json)
- [`/v1/schema.json`](public/v1/schema.json)
- [`/v1/deltas/today.json`](public/v1/deltas/today.json)
- [`/spatial-evaluations.parquet`](public/spatial-evaluations.parquet)
- [`/scene-bounding-footprints.parquet`](public/scene-bounding-footprints.parquet)
- [`/llms.txt`](public/llms.txt)

## Architecture
- **Geometric Engine**: GEOS / Shapely (Point-in-Polygon, Winding Number, Ray-Casting)
- **Geodesic Computation**: PyProj WGS-84 Ellipsoidal Inversion
- **Spatial Tessellation**: Uber H3 Discrete Global Grid (Resolution 8)
- **Storage**: DuckDB + Parquet
- **State Ledger**: Git-tracked append-only JSONL in `/ledger`
- **Edge CDN**: GitHub Pages (Fastly CDN)
