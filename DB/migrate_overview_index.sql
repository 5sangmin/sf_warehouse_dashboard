USE warehouse_db;

-- Speeds up /api/v1/factories/overview (latest snapshot per layout).
ALTER TABLE warehouse_snapshot
    ADD INDEX idx_snapshot_layout_time_scenario (layout_id, snapshot_time, scenario_id);

