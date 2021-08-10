CREATE (:DataStructure)
CREATE (:Algorithm)
[:RELATED]
[:USE_ALGORITHM]
[:USE_DATA_STRUCTURE]
[:TAKE_TIME]
[:TAKE_SPACE]
CREATE (:Space)
CREATE (:Time)



CREATE (john:Person {name: 'John'})
CREATE (joe:Person {name: 'Joe'})
CREATE (steve:Person {name: 'Steve'})
CREATE (sara:Person {name: 'Sara'})
CREATE (maria:Person {name: 'Maria'})
CREATE (john)-[:FRIEND]->(joe)-[:FRIEND]->(steve)
CREATE (john)-[:FRIEND]->(sara)-[:FRIEND]->(maria)