WITH traverse (id) AS
	(SELECT nodes.dependent_id
	FROM nodes
	WHERE id=3

UNION ALL
	SELECT nodes.dependent_id
	FROM nodes
	INNER JOIN traverse
	ON nodes.id = traverse.id
	)

SELECT id FROM traverse;