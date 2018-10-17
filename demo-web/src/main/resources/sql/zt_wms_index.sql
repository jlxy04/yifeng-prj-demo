alter table zt_goods_group add index index_group_goods_name (`goods_name`);

alter table zt_goods_company add index index_company_code (`company_code`);
alter table zt_goods_company add index index_company_goods (`company_code`,`goods_code`);

alter table zt_goods_store add index index_store_code (`address_code`);
alter table zt_goods_store add index index_store_goods (`address_code`,`goods_code`);

alter table zt_goods_lot_depot add index index_lot_depot_code (`warehouse_code`);
alter table zt_goods_lot_depot add index index_lot_depot_code_goods (`warehouse_code`,`goods_code`);

alter table zt_goods_lot_store add index index_lot_store_code (`store_code`);
alter table zt_goods_lot_store add index index_lot_store_code_goods (`store_code`,`goods_code`);

alter table zt_goods_lot_store_detail add index index_lot_store_detail_goods (`store_code`,`goods_code`,`lot_number`);

alter table zt_goods_barcode add index index_barcode_code (`the_file_number`);
alter table zt_goods_barcode add index index_barcode_code_goods (`goods_code`,`the_file_number`);

alter table zt_goods_white_list add index index_barcode_code_goods (`address_code`,`goods_code`);

alter table zt_goods_ban_sale add index index_ban_sale_code (`sort_code`);
alter table zt_goods_ban_sale add index index_ban_sale_code_company (`sort_code`,`company_code`);

alter table zt_goods_ban_sale_detail add index index_ban_sale_detail_goods (`id_sort`,`goods_code`);

alter table zt_goods_expand add index index_expand_goods (`goods_code`);

alter table zt_goods_category add index index_category_node (`grade_structure_node`);

alter table zt_goods_classify add index index_classify_node_company (`company_code`,`grade_structure_node`);

alter table zt_goods_classify_detail add index index_classify_detail_company (`company_code`,`grade_structure_node`, `goods_code`);

alter table zt_goods_recipe add index index_recipe_code (`prestype_code`);
alter table zt_goods_recipe add index index_recipe_company (`prestype_code`,`company_code`);
alter table zt_goods_recipe add index index_recipe_company_store (`prestype_code`,`company_code`, `store_code`);

alter table zt_goods_unfree_info add index index_unfree_goods (`store_code`,`goods_code`);

alter table zt_goods_unfree_bill_detail add index index_unfree_bill_detail (`store_code`, `goods_code`, `bill_code`);

alter table zt_goods_limit_sell add index index_limit_sell_goods (`store_code`, `goods_code`);

alter table zt_goods_lock_sell add index index_lock_sell_goods (`store_code`, `goods_code`);

alter table zt_goods_nomember add index index_nomember_store_goods (`store_code`, `goods_code`);

alter table zt_base_store add index index_base_store_company (`address_code`, `company_code`);
