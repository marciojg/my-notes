let options = { bla: 'aaa' }
console.log('-------------------------')
console.log('antigo ---', Object.assign({}, this.commit, options))
// antigo --- { autoCommit: true, bla: 'aaa' }
console.log('novo ----', {...this.commit, ...options})
// novo ---- { autoCommit: true, bla: 'aaa' }
console.log('-------------------------')

==============================

console.log('-------------------------')
console.log('antigo ---', Object.assign(Object.assign({}, params), this.cursor))
/*
antigo --- {
  start_reference_date: '2019-01-01',
  end_reference_date: '2019-01-02',
  cursor: { dir: 3003, type: 2021 }
}
*/
console.log('novo ----', {...params, ...this.cursor})
/*
novo ---- {
  start_reference_date: '2019-01-01',
  end_reference_date: '2019-01-02',
  cursor: { dir: 3003, type: 2021 }
}
*/
console.log('-------------------------')

=============================
