//CREATE (stack:DataStructure {name: 'Stack'})
//CREATE (queue:DataStructure {name: 'Queue'})
//CREATE (priority_queue:DataStructure {name: 'Priority Queue'})
//CREATE (tree:DataStructure {name: 'Tree'})
//CREATE (binary_search_tree:DataStructure {name: 'Binary Search Tree'})
//CREATE (heap:DataStructure {name: 'Heap'})
//CREATE (subsequence:Keyword)
//CREATE (min:keyword)
//CREATE (max:keyword)
//
//
//CREATE (:Algorithm)
//[:RELATED]
//[:USE_ALGORITHM]
//[:USE_DATA_STRUCTURE]
//[:TAKE_TIME]
//[:TAKE_SPACE]
//CREATE (:Space)
//CREATE (:Time)

// 用单引号即可，估计是因为没有char type的区别

SHOW CONSTRAINTS;

// naming: <node_label>_<property>_<constraint_type>
CREATE CONSTRAINT problem_title_unique ON (p:Problem) ASSERT p.title IS UNIQUE
CREATE CONSTRAINT tag_title_unique ON (t:Tag) ASSERT t.title IS UNIQUE

// Problem nodes
CREATE (two_sum:Problem {title: "Two Sum", description: "", link: ""})
CREATE (kth_largest_element_in_an_array:Problem {title: "Kth Largest Element in an Array", description: "", link: "https://leetcode.com/problems/kth-largest-element-in-an-array/"})

// Tag nodes
CREATE (hash_table:Tag {title: "Hash Table"})
CREATE (backtracking:Tag {title: 'Backtracking'})
CREATE (quick_select:Tag {title: 'Quickselect'})
CREATE (priority_queue:Tag {title: 'Priority Queue'})

// Tag problems relationship
MATCH (ts:Problem {title: "Two Sum"})
MATCH (ht:Tag {title: "Hash Table"})
CREATE (ts) - [rel:IS_TAGGED_WITH] -> (ht)

MATCH (p:Problem {title: "Word Search"})
MATCH (t:Tag {title: "Backtracking"})
CREATE (p) - [rel:IS_TAGGED_WITH] -> (t)

MATCH (p:Problem {title: "Kth Largest Element in an Array"})
MATCH (t:Tag {title: "Priority Queue"})
CREATE (p) - [rel:IS_TAGGED_WITH] -> (t)

MATCH (p:Problem {title: "Kth Largest Element in an Array"})
MATCH (t:Tag {title: "Quickselect"})
CREATE (p) - [rel:IS_TAGGED_WITH] -> (t)

// Problem follow up problems relationship
//MATCH (p1:Problem {title: "Word Search"})
//MATCH (p2:Problem {title: "Word Search II"})
//CREATE (p2) - [rel:FOLLOWS_UP] -> (p1)

