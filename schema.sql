CREATE SEQUENCE IF NOT EXISTS seq_commit_id START 1;

CREATE TABLE IF NOT EXISTS spatial_point_evaluations (
    query_id VARCHAR PRIMARY KEY,
    latitude DOUBLE,
    longitude DOUBLE,
    h3_index_res8 VARCHAR,
    target_geometry_id VARCHAR,
    geometry_type VARCHAR,
    is_contained BOOLEAN,
    distance_meters DOUBLE,
    relative_position VARCHAR,
    witness_proof_json VARCHAR,
    proof_hash VARCHAR,
    evaluated_at_utc VARCHAR
);

CREATE TABLE IF NOT EXISTS scene_bounding_footprints (
    geometry_id VARCHAR PRIMARY KEY,
    source_platform VARCHAR,
    mgrs_or_track VARCHAR,
    srid INTEGER,
    polygon_wkt VARCHAR,
    h3_polyfill_json VARCHAR,
    content_hash VARCHAR,
    indexed_at_utc VARCHAR
);

CREATE TABLE IF NOT EXISTS spatial_proof_ledger (
    commit_id BIGINT PRIMARY KEY,
    timestamp_utc VARCHAR,
    operation VARCHAR,
    query_id VARCHAR,
    target_geometry_id VARCHAR,
    is_contained BOOLEAN,
    proof_hash VARCHAR,
    detail VARCHAR
);
