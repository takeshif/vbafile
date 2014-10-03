select itm.group_code, itm.supplier_no, sup.supplier_name, pln.plan_no, pln.plan_title, pln.limit_date,count(chd.item_cd)
  from m_plan pln, m_plan_child chd, m_item itm, m_supplier sup 
  where pln.plan_no = chd.plan_no and
        chd.item_cd = itm.item_cd and
        itm.supplier_no = sup.supplier_no and
        pln.plan_no >= 21148 and
        pln.plan_no <= 21149
  group by itm.group_code, itm.supplier_no, sup.supplier_name, pln.plan_no, pln.plan_title, pln.limit_date
  order by itm.group_code, itm.supplier_no