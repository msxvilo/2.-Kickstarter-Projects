CREATE TABLE kickstarter_projects (
    ID BIGINT PRIMARY KEY,
    name TEXT,
    category TEXT,
    main_category TEXT,
    currency VARCHAR(3),
    deadline DATE,
    goal NUMERIC(15, 2),
    launched TIMESTAMP,
    pledged NUMERIC(15, 2),
    state VARCHAR(20),
    backers INTEGER,
    country VARCHAR(2),
    usd_pledged NUMERIC(15, 2),
    usd_pledged_real NUMERIC(15, 2),
    usd_goal_real NUMERIC(15, 2)
);
