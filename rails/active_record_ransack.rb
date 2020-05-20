Revenue.joins(revenue_kind: :origin).select(*(Reports::RevenueReport::FIELDS.values | ['revenue_kind.name as rv_name', 'origin.name as or_name'])).search(revenue_kind_id_eq: 7, revenue_kind_origin_id_eq: 19).result.pluck(*(Reports::RevenueReport::FIELDS.values | [])) 
5.126245408

Revenue.joins(revenue_kind: :origin).search(revenue_kind_id_eq: 7, revenue_kind_origin_id_eq: 19).result.pluck(*Reports::RevenueReport::FIELDS.values)
10.561862327

--------------------------
Revenue.joins(revenue_kind: :origin).includes(revenue_kind: :origin).search(revenue_kind_id_eq: 7, revenue_kind_origin_id_eq: 19).result.pluck(*Reports::RevenueReport::FIELDS.values)
4.765236261

I, [2020-05-20T12:40:29.545278 #31]  INFO -- : 1-select-inicio
I, [2020-05-20T12:40:34.557851 #31]  INFO -- : 1-select-fim
I, [2020-05-20T12:40:34.557955 #31]  INFO -- : 2-report-call-inicio
I, [2020-05-20T12:40:34.560319 #31]  INFO -- : 2-1-build-row-incio
I, [2020-05-20T12:41:07.330580 #31]  INFO -- : 2-1-build-row-fim 32.770157917
I, [2020-05-20T12:41:29.793084 #31]  INFO -- : 2-report-call-fim
I, [2020-05-20T12:41:29.793184 #31]  INFO -- : 3-serializer-inicio
I, [2020-05-20T12:41:30.985722 #31]  INFO -- : 3-serializer-fim
--------------------------

Revenue.search(revenue_kind_id_eq: 7, revenue_kind_origin_id_eq: 19).result.joins(revenue_kind: :origin).includes(revenue_kind: :origin).pluck(*Reports::RevenueReport::FIELDS.values)
8.013766601

Revenue.joins(revenue_kind: :origin).select(*(Reports::RevenueReport::FIELDS.values | ['revenue_kind.name as rv_name', 'origin.name as or_name'])).search(revenue_kind_id_eq: 7, revenue_kind_origin_id_eq: 19).result.pluck(*Reports::RevenueReport::FIELDS.values)
4.763064408

---------------------
Revenue.joins(revenue_kind: :origin).select(*(Reports::RevenueReport::FIELDS.values | ['revenue_kind.name as rv_name', 'origin.name as or_name'])).search(revenue_kind_id_eq: 7, revenue_kind_origin_id_eq: 19).result
0.00137287

I, [2020-05-20T12:45:31.844706 #31]  INFO -- : 1-select-inicio
I, [2020-05-20T12:45:31.928778 #31]  INFO -- : 1-select-fim
I, [2020-05-20T12:45:31.928855 #31]  INFO -- : 2-report-call-inicio
I, [2020-05-20T12:45:31.930415 #31]  INFO -- : 2-1-build-row-incio
I, [2020-05-20T12:46:21.681787 #31]  INFO -- : 2-1-build-row-fim 49.751304572
I, [2020-05-20T12:46:41.342089 #31]  INFO -- : 2-report-call-fim
I, [2020-05-20T12:46:41.342183 #31]  INFO -- : 3-serializer-inicio
I, [2020-05-20T12:46:42.669361 #31]  INFO -- : 3-serializer-fim
---------------------

Revenue.joins(revenue_kind: :origin).eager_load(revenue_kind: :origin).search(revenue_kind_id_eq: 7, revenue_kind_origin_id_eq: 19).result.pluck(*Reports::RevenueReport::FIELDS.values)
9.548299749

t1 = nil
t2 = nil
def teste
      t1 = Time.zone.now
      Revenue.joins(revenue_kind: :origin).eager_load(revenue_kind: :origin).search(revenue_kind_id_eq: 7, revenue_kind_origin_id_eq: 19).result.pluck(*Reports::RevenueReport::FIELDS.values)
      t2 = Time.zone.now - t1
end
