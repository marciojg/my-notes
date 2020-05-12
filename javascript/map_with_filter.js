console.log('-------------------------')
console.log('antigo ---', Object.keys(params).map((key) => {
    if (params[key] !== '') {
    return `p_${key}=>:${key}`;
    }})
)
console.log('novo ----', Object.keys(params)
                                .filter(key => params[key])
                                .map(key => `p_${key}=>:${key}`))
console.log('-------------------------')
// Parametros: {"start_reference_date":"2019-01-01","end_reference_date":"2019-01-02"}
// -------------------------
// antigo --- [
//   'p_start_reference_date=>:start_reference_date',
//   'p_end_reference_date=>:end_reference_date'
// ]
// novo ---- [
//   'p_start_reference_date=>:start_reference_date',
//   'p_end_reference_date=>:end_reference_date'
// ]

// Parametros: {"start_reference_date":"2019-01-01","end_reference_date":""}
// -------------------------
// antigo --- [ 'p_start_reference_date=>:start_reference_date', undefined ]
// novo ---- [ 'p_start_reference_date=>:start_reference_date' ]
