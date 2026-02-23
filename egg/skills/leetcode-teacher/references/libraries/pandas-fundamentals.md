# Pandas Fundamentals for Data Science Interviews

Core pandas operations for data manipulation coding interviews. Covers DataFrame creation, selection, filtering, groupby, merge, apply, cleaning, and I/O — organized by interview frequency with complexity analysis, Socratic prompts, and recognition signals.

**Prerequisites:** Python fundamentals. Familiarity with `references/ml/ml-implementations.md` for ML-adjacent problems.

---

## The Mental Model

A DataFrame is a **dict of Series** (each column is a named Series sharing the same index) or equivalently an **in-memory SQL table** with typed columns. This dual mental model unlocks two thinking modes:

- **Dict-of-Series:** Think column-first. `df['col']` returns a Series. Vectorized operations apply element-wise down columns.
- **SQL table:** Think row-first. `df.query()`, `groupby()`, `merge()` map directly to SQL `WHERE`, `GROUP BY`, `JOIN`.

**Socratic Prompts:**
- "If a DataFrame is like a SQL table, what pandas operation corresponds to `SELECT col1, col2 FROM table WHERE col3 > 5`?"
- "Why does pandas prefer column operations over row-by-row iteration?"

---

## DataFrame Creation

### From Dictionary (most common in interviews)

```python
df = pd.DataFrame({
    'name': ['Alice', 'Bob', 'Charlie'],
    'age': [25, 30, 35],
    'score': [85.5, 92.0, 78.3]
})
```

### From List of Tuples

```python
data = [('Alice', 25), ('Bob', 30), ('Charlie', 35)]
df = pd.DataFrame.from_records(data, columns=['name', 'age'])
```

### From CSV / JSON

```python
df = pd.read_csv('data.csv')              # comma-delimited
df = pd.read_csv('data.tsv', sep='\t')    # tab-delimited
df = pd.read_json('data.json')
```

### Quick Inspection

```python
df.head()        # first 5 rows
df.describe()    # summary statistics for numeric columns
df.dtypes        # column data types
df.shape         # (num_rows, num_cols)
len(df)          # row count
df.info()        # dtypes + non-null counts + memory
```

**Socratic Prompts:**
- "When would you use `from_records` vs the dict constructor?"
- "What does `describe()` tell you that `dtypes` alone doesn't?"

---

## Selection & Indexing

### loc vs iloc vs at vs iat

| Accessor | Selects by | Returns | Use case |
|----------|-----------|---------|----------|
| `df.loc[row, col]` | **Label** | Scalar, Series, or DataFrame | Label-based slicing (inclusive both ends) |
| `df.iloc[row, col]` | **Integer position** | Scalar, Series, or DataFrame | Positional slicing (exclusive end) |
| `df.at[row, col]` | **Label** | Scalar only | Fast single-value access |
| `df.iat[row, col]` | **Integer position** | Scalar only | Fast single-value access |

```python
df.loc[0, 'name']           # label-based: row 0, column 'name'
df.iloc[0, 1]               # position-based: row 0, column index 1
df.loc[0:2, 'name':'score'] # inclusive on both ends
df.iloc[0:2, 0:2]           # exclusive on end (like Python slicing)
```

### Column Selection

```python
df['age']                    # single column -> Series
df[['name', 'age']]         # multiple columns -> DataFrame
```

**Complexity:** All accessor operations are O(1) for single values, O(K) for K-element slices.

**Socratic Prompts:**
- "What's the difference between `df.loc[0:2]` and `df.iloc[0:2]`?"
- "When would `at` be preferable to `loc`?"

**Recognition Signals:**
- "Get value at row X, column Y" -> `df.at[x, 'col']` or `df.loc[x, 'col']`
- "Select rows 5 through 10" -> clarify label vs position, then `loc` or `iloc`

---

## Boolean Filtering & Masking

The most frequently tested pandas skill in interviews.

### Single Condition

```python
df[df['age'] > 25]                          # rows where age > 25
df[df['name'] == 'Alice']                   # exact match
```

### Multiple Conditions

```python
# AND: use & with parentheses (operator precedence!)
df[(df['age'] > 25) & (df['score'] > 80)]

# OR: use |
df[(df['age'] < 25) | (df['score'] > 90)]

# NOT: use ~
df[~df['name'].isin(['Alice', 'Bob'])]
```

### String Matching

```python
df[df['name'].str.contains('li')]           # substring match
df[df['name'].str.startswith('A')]          # prefix match
df[df['name'].str.lower().str.contains('a')]  # case-insensitive
```

### isin for Set Membership

```python
keep = ['Alice', 'Charlie']
df[df['name'].isin(keep)]                   # rows in set
df[~df['name'].isin(keep)]                  # rows NOT in set
```

### query() — SQL-like Syntax

```python
df.query('age > 25 and score > 80')         # cleaner for complex filters
df.query('name == "Alice"')                 # string comparison
```

**Complexity:** O(N) for N rows — full scan of the boolean mask.

**Socratic Prompts:**
- "Why do we need parentheses around each condition with `&`?"
- "When is `.query()` cleaner than bracket notation?"
- "How would you filter rows where a column value is in a list of 1000 items?"

**Recognition Signals:**
- "Filter rows where..." -> boolean mask
- "Select rows matching multiple criteria" -> `&` / `|` with parentheses
- "Find rows containing text" -> `str.contains()`

---

## Column Operations

### Add a Column

```python
df['new_col'] = 0                           # constant value
df['new_col'] = df['a'] + df['b']           # computed from others
df['new_col'] = some_list                   # from external list (must match length)
```

### Delete a Column

```python
df = df.drop(columns=['col1', 'col2'])      # preferred (returns new df)
del df['col']                               # in-place (less common)
```

### Rename Columns

```python
df = df.rename(columns={'old': 'new', 'old2': 'new2'})
df.columns = ['a', 'b', 'c']               # rename all at once
```

### Reorder Columns

```python
df = df[['c', 'a', 'b']]                   # explicit order
```

### Insert at Specific Position

```python
df.insert(2, 'new_col', values)             # insert at index 2
# WARNING: do NOT assign the result — insert() modifies in-place and returns None
```

**Socratic Prompts:**
- "What happens if you write `df = df.insert(2, 'x', vals)`? Why?"

---

## Sorting & Ranking

```python
# Sort by one column
df = df.sort_values('score', ascending=False)

# Sort by multiple columns
df = df.sort_values(['age', 'score'], ascending=[True, False])

# Reset index after sort (clean 0..N-1 index)
df = df.reset_index(drop=True)

# Rank values
df['rank'] = df['score'].rank(ascending=False)
```

**Complexity:** O(N log N) for sort, O(N) for rank.

**Socratic Prompts:**
- "After sorting, why might you want to `reset_index(drop=True)`?"
- "What does `drop=True` do in `reset_index`?"

---

## GroupBy & Aggregation (Highest Interview Weight)

The split-apply-combine pattern: **split** the data into groups, **apply** a function to each group, **combine** results back.

### Basic GroupBy

```python
# Single aggregation
df.groupby('category')['value'].mean()

# Multiple aggregations
df.groupby('category')['value'].agg(['mean', 'sum', 'count'])

# Multiple columns with different aggregations
df.groupby('category').agg({
    'value': 'mean',
    'quantity': 'sum',
    'price': ['min', 'max']
})
```

### value_counts — Quick Frequency Table

```python
df['category'].value_counts()                    # counts, descending
df['category'].value_counts(normalize=True)      # proportions (0-1)
```

### transform — Broadcast Back to Original Shape

```python
# Add group mean as a new column (same length as original df)
df['group_mean'] = df.groupby('category')['value'].transform('mean')
```

### Groupby Object Iteration

```python
for group_name, group_df in df.groupby('category'):
    print(group_name, len(group_df))
```

### The `observed=True` Gotcha (Categorical Columns)

```python
# If column is categorical, groupby includes ALL categories (even absent ones)
df['cat_col'] = df['cat_col'].astype('category')
sub = df[df['cat_col'].isin(['A', 'B'])]

# BUG: still groups by 'C', 'D', etc. with empty groups
sub.groupby('cat_col').size()

# FIX: use observed=True to only group by values present in the data
sub.groupby('cat_col', observed=True).size()
```

### Top N per Group

```python
# After sorting, get top 5 per group
df_sorted = df.sort_values('score', ascending=False)
top5 = df_sorted.groupby('category').head(5)
```

**Complexity:** O(N) for simple aggregations (mean, sum, count). O(N log N) if sorting within groups.

**Socratic Prompts:**
- "What's the difference between `agg()` and `transform()`?"
- "When would you use `transform` instead of `agg`?"
- "If you groupby a categorical column on a subset of data, why might you get unexpected empty groups?"
- "How does split-apply-combine relate to SQL's `GROUP BY`?"

**Recognition Signals:**
- "Average/sum/count per group" -> `groupby().agg()`
- "Add group-level stat back to each row" -> `groupby().transform()`
- "Most frequent values" -> `value_counts()`
- "Top N per category" -> sort + `groupby().head(N)`

---

## Merge, Join, Concat (Second Highest Interview Weight)

### merge — SQL-style JOIN

```python
# Inner join (default): only matching keys
result = pd.merge(df1, df2, on='key')

# Left join: keep all rows from df1
result = pd.merge(df1, df2, on='key', how='left')

# Right / outer
result = pd.merge(df1, df2, on='key', how='right')
result = pd.merge(df1, df2, on='key', how='outer')

# Join on different column names
result = pd.merge(df1, df2, left_on='id', right_on='user_id')

# Method chaining for multiple merges
result = df1.merge(df2, on='key').merge(df3, on='key')
```

### concat — Stack / UNION

```python
# Stack vertically (like SQL UNION ALL)
result = pd.concat([df1, df2], ignore_index=True)

# Stack horizontally (column-wise)
result = pd.concat([df1, df2], axis=1)

# Combine list of DataFrames
result = pd.concat(list_of_dfs, ignore_index=True)
```

### Merge vs Concat Mental Model

| Operation | Analogy | Key Parameter |
|-----------|---------|---------------|
| `merge` | SQL JOIN | `on`, `how` |
| `concat` (axis=0) | SQL UNION | `ignore_index` |
| `concat` (axis=1) | Horizontal paste | Aligns on index |

**Complexity:** O(N + M) average for hash-based merge (inner/left/right). O(N + M) for concat.

**Socratic Prompts:**
- "What SQL operation does `pd.merge(df1, df2, on='key')` correspond to?"
- "When would you use `concat` instead of `merge`?"
- "What happens to rows with no match in a left join vs an inner join?"

**Recognition Signals:**
- "Combine two tables on a shared key" -> `merge`
- "Stack DataFrames vertically" -> `concat` with `ignore_index=True`
- "SQL JOIN equivalent" -> `merge` with `how` parameter

---

## Apply, Map, Transform

### apply — Flexible Row/Column Function

```python
# Apply function to each row
df['result'] = df.apply(lambda row: row['a'] + row['b'], axis=1)

# Apply function to each column
col_means = df.apply(lambda col: col.mean(), axis=0)

# Apply user-defined function to a single column (Series.apply)
df['clean'] = df['name'].apply(lambda x: x.strip().lower())
```

### map — Series Only, Dict or Function

```python
# Map values using a dictionary
df['grade'] = df['score'].map({90: 'A', 80: 'B', 70: 'C'})

# Map with a function
df['upper'] = df['name'].map(str.upper)
```

### Vectorized > Apply > itertuples > iterrows

Always prefer vectorized operations. Only use `apply` when vectorized isn't possible.

```python
# BEST: vectorized (O(N), fast C implementation)
df['total'] = df['price'] * df['quantity']

# OK: apply (O(N), Python overhead per row)
df['total'] = df.apply(lambda r: r['price'] * r['quantity'], axis=1)

# SLOW: itertuples (O(N), slightly less overhead than iterrows)
for row in df.itertuples():
    print(row.name, row.age)

# SLOWEST: iterrows (O(N), Series overhead per row)
for idx, row in df.iterrows():
    print(row['name'])
```

**Socratic Prompts:**
- "Why is `df['a'] * df['b']` faster than `df.apply(lambda r: r['a'] * r['b'], axis=1)`?"
- "When is `map` preferable to `apply`?"
- "If you have a dictionary mapping old values to new values, what's the cleanest approach?"

**Recognition Signals:**
- "Apply custom function to each row" -> `apply(func, axis=1)`
- "Map column values using a lookup" -> `Series.map(dict)`
- "Element-wise operation on columns" -> vectorized arithmetic

---

## Missing Data Handling

### Detection

```python
df.isna()                   # boolean mask of NaN locations
df.isna().sum()             # count NaNs per column
df.isna().mean()            # fraction of NaNs per column
df['col'].notna()           # inverse: True where NOT NaN
```

### Removal

```python
df.dropna()                           # drop rows with ANY NaN
df.dropna(subset=['col1', 'col2'])    # drop rows where specific cols are NaN
df.dropna(axis='columns')            # drop COLUMNS with any NaN
df.dropna(thresh=len(df) * 0.9, axis='columns')  # drop cols >10% NaN
```

### Filling

```python
df['col'].fillna(0)                   # fill with constant
df['col'].fillna(df['col'].mean())    # fill with column mean
df.fillna({                           # fill different columns differently
    'col1': 'missing',
    'col2': 0,
    'col3': df['col3'].median()
})
```

**Complexity:** O(N) for all operations (single pass).

**Socratic Prompts:**
- "When is it better to drop NaN rows vs fill them?"
- "What are the risks of filling with the mean?"

**Recognition Signals:**
- "Handle missing values" -> `isna()`, `fillna()`, `dropna()`
- "What percentage of data is missing?" -> `df.isna().mean()`

---

## Data Types & Conversion

```python
# Check types
df.dtypes

# Convert column type
df['col'] = df['col'].astype(int)
df['col'] = df['col'].astype('category')

# Safe numeric conversion (invalid -> NaN instead of error)
df['col'] = pd.to_numeric(df['col'], errors='coerce')

# Binning continuous into categories
df['age_group'] = pd.cut(
    df['age'],
    bins=[0, 18, 65, 99],
    labels=['child', 'adult', 'elderly']
)
```

**Socratic Prompts:**
- "What does `errors='coerce'` do in `pd.to_numeric`? When is it useful?"
- "When would you convert a column to `category` dtype?"

---

## String Operations

```python
df['col'].str.lower()                  # lowercase
df['col'].str.upper()                  # uppercase
df['col'].str.strip()                  # trim whitespace
df['col'].str.contains('pattern')      # regex/substring match -> bool Series
df['col'].str.replace('old', 'new')    # find/replace
df['col'].str.split('_', expand=True)  # split into multiple columns
df['col'].str.len()                    # string length per element
df['col'].str[0:3]                     # slice each string
```

**Recognition Signals:**
- "Clean text column" -> chain of `.str.strip().str.lower()`
- "Extract part of string" -> `.str.split()` or `.str[start:end]`

---

## I/O Operations

### Reading

```python
df = pd.read_csv('file.csv')
df = pd.read_csv('file.tsv', sep='\t')
df = pd.read_csv('file.csv', header=0, skiprows=3, skipfooter=2)
df = pd.read_json('file.json')
df = pd.read_excel('file.xlsx')  # requires openpyxl
```

### Writing

```python
df.to_csv('output.csv', index=False)
df.to_csv('output.tsv', sep='\t', index=False)
df.to_json('output.json')
df.to_excel('output.xlsx', index=False)  # requires openpyxl
```

### Key Parameters for read_csv

| Parameter | Purpose | Example |
|-----------|---------|---------|
| `sep` | Delimiter | `sep='\t'` for TSV |
| `header` | Row number for column names | `header=0` (default) |
| `names` | Provide column names explicitly | `names=['a','b','c']` |
| `skiprows` | Skip rows at top | `skiprows=3` |
| `skipfooter` | Skip rows at bottom | `skipfooter=2` |
| `index_col` | Column to use as index | `index_col=0` |
| `dtype` | Force column types | `dtype={'id': str}` |
| `na_values` | Additional NaN markers | `na_values=['N/A', '']` |

---

## The SettingWithCopyWarning

A critical interview and debugging topic. This warning fires when pandas can't tell if you're modifying a view or a copy.

### The Problem

```python
# DANGEROUS: may or may not modify original df
sub = df[df['age'] > 25]
sub['score'] = 100           # SettingWithCopyWarning!
```

### The Fix

```python
# Option 1: explicit copy
sub = df[df['age'] > 25].copy()
sub['score'] = 100           # safe: modifying the copy

# Option 2: use .loc on the original
df.loc[df['age'] > 25, 'score'] = 100   # safe: modifying original directly
```

**Socratic Prompts:**
- "Why does `df[df['age'] > 25]['score'] = 100` trigger a warning?"
- "What's the difference between a view and a copy in pandas?"

---

## Duplicates & Unique Values

```python
df['col'].unique()              # array of unique values
df['col'].nunique()             # count of unique values
df.duplicated(['col1', 'col2']) # boolean mask of duplicate rows
df.drop_duplicates(subset=['col1'], keep='first')  # keep first occurrence
```

---

## Index Operations

```python
df = df.set_index('col')         # column -> index
df = df.reset_index()            # index -> column
df = df.reset_index(drop=True)   # discard old index, renumber 0..N-1
```

---

## Quick Reference Table

| Operation | Method | Time Complexity |
|-----------|--------|----------------|
| Select column | `df['col']` | O(1) |
| Filter rows | `df[mask]` | O(N) |
| Sort | `df.sort_values()` | O(N log N) |
| GroupBy + agg | `df.groupby().agg()` | O(N) |
| Merge (hash join) | `pd.merge()` | O(N + M) avg |
| Concat | `pd.concat()` | O(N + M) |
| Apply (row-wise) | `df.apply(f, axis=1)` | O(N) |
| Vectorized ops | `df['a'] + df['b']` | O(N) |
| fillna | `df.fillna()` | O(N) |
| value_counts | `df['col'].value_counts()` | O(N) |
| drop_duplicates | `df.drop_duplicates()` | O(N) |
| read_csv | `pd.read_csv()` | O(N) |
| to_csv | `df.to_csv()` | O(N) |

---

## Interview Problem Patterns

| Problem Type | Key Operations | Example Task |
|-------------|---------------|--------------|
| Data cleaning | `fillna`, `dropna`, `str.strip`, `to_numeric(errors='coerce')` | "Clean this messy dataset" |
| Aggregation report | `groupby`, `agg`, `value_counts` | "Revenue per region per quarter" |
| Table joining | `merge`, `concat` | "Combine user table with orders table" |
| Feature engineering | `apply`, `cut`, `map`, vectorized ops | "Create age bins and one-hot encode" |
| Deduplication | `drop_duplicates`, `duplicated` | "Find and remove duplicate records" |
| Ranking / Top-N | `sort_values`, `groupby().head()`, `rank` | "Top 3 products per category by sales" |
| Pivot / reshape | `groupby().agg()`, `pivot_table` | "Summarize sales by product and month" |
| Time-based analysis | `pd.to_datetime`, `resample`, `shift` | "Monthly growth rate" |

---

## See Also

- `references/ml/ml-implementations.md` — ML coding patterns (optimizers, layers, losses)
- `references/techniques/array-techniques.md` — Core array manipulation patterns

**Attribution:** Transformed from community pandas cheatsheet (fomightez/useful-pandas-snippets-to-pandas) with interview-focused restructuring, complexity analysis, and Socratic pedagogy overlay.
