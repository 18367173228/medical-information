package com.qf.manager.pojo.po;

import java.util.ArrayList;
import java.util.List;

public class DrugExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DrugExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andDrugidIsNull() {
            addCriterion("drugId is null");
            return (Criteria) this;
        }

        public Criteria andDrugidIsNotNull() {
            addCriterion("drugId is not null");
            return (Criteria) this;
        }

        public Criteria andDrugidEqualTo(Long value) {
            addCriterion("drugId =", value, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugidNotEqualTo(Long value) {
            addCriterion("drugId <>", value, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugidGreaterThan(Long value) {
            addCriterion("drugId >", value, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugidGreaterThanOrEqualTo(Long value) {
            addCriterion("drugId >=", value, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugidLessThan(Long value) {
            addCriterion("drugId <", value, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugidLessThanOrEqualTo(Long value) {
            addCriterion("drugId <=", value, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugidIn(List<Long> values) {
            addCriterion("drugId in", values, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugidNotIn(List<Long> values) {
            addCriterion("drugId not in", values, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugidBetween(Long value1, Long value2) {
            addCriterion("drugId between", value1, value2, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugidNotBetween(Long value1, Long value2) {
            addCriterion("drugId not between", value1, value2, "drugid");
            return (Criteria) this;
        }

        public Criteria andDrugnameIsNull() {
            addCriterion("drugName is null");
            return (Criteria) this;
        }

        public Criteria andDrugnameIsNotNull() {
            addCriterion("drugName is not null");
            return (Criteria) this;
        }

        public Criteria andDrugnameEqualTo(String value) {
            addCriterion("drugName =", value, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameNotEqualTo(String value) {
            addCriterion("drugName <>", value, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameGreaterThan(String value) {
            addCriterion("drugName >", value, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameGreaterThanOrEqualTo(String value) {
            addCriterion("drugName >=", value, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameLessThan(String value) {
            addCriterion("drugName <", value, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameLessThanOrEqualTo(String value) {
            addCriterion("drugName <=", value, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameLike(String value) {
            addCriterion("drugName like", value, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameNotLike(String value) {
            addCriterion("drugName not like", value, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameIn(List<String> values) {
            addCriterion("drugName in", values, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameNotIn(List<String> values) {
            addCriterion("drugName not in", values, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameBetween(String value1, String value2) {
            addCriterion("drugName between", value1, value2, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugnameNotBetween(String value1, String value2) {
            addCriterion("drugName not between", value1, value2, "drugname");
            return (Criteria) this;
        }

        public Criteria andDrugimgIsNull() {
            addCriterion("drugImg is null");
            return (Criteria) this;
        }

        public Criteria andDrugimgIsNotNull() {
            addCriterion("drugImg is not null");
            return (Criteria) this;
        }

        public Criteria andDrugimgEqualTo(String value) {
            addCriterion("drugImg =", value, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgNotEqualTo(String value) {
            addCriterion("drugImg <>", value, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgGreaterThan(String value) {
            addCriterion("drugImg >", value, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgGreaterThanOrEqualTo(String value) {
            addCriterion("drugImg >=", value, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgLessThan(String value) {
            addCriterion("drugImg <", value, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgLessThanOrEqualTo(String value) {
            addCriterion("drugImg <=", value, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgLike(String value) {
            addCriterion("drugImg like", value, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgNotLike(String value) {
            addCriterion("drugImg not like", value, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgIn(List<String> values) {
            addCriterion("drugImg in", values, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgNotIn(List<String> values) {
            addCriterion("drugImg not in", values, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgBetween(String value1, String value2) {
            addCriterion("drugImg between", value1, value2, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugimgNotBetween(String value1, String value2) {
            addCriterion("drugImg not between", value1, value2, "drugimg");
            return (Criteria) this;
        }

        public Criteria andDrugpriceIsNull() {
            addCriterion("drugPrice is null");
            return (Criteria) this;
        }

        public Criteria andDrugpriceIsNotNull() {
            addCriterion("drugPrice is not null");
            return (Criteria) this;
        }

        public Criteria andDrugpriceEqualTo(Double value) {
            addCriterion("drugPrice =", value, "drugprice");
            return (Criteria) this;
        }

        public Criteria andDrugpriceNotEqualTo(Double value) {
            addCriterion("drugPrice <>", value, "drugprice");
            return (Criteria) this;
        }

        public Criteria andDrugpriceGreaterThan(Double value) {
            addCriterion("drugPrice >", value, "drugprice");
            return (Criteria) this;
        }

        public Criteria andDrugpriceGreaterThanOrEqualTo(Double value) {
            addCriterion("drugPrice >=", value, "drugprice");
            return (Criteria) this;
        }

        public Criteria andDrugpriceLessThan(Double value) {
            addCriterion("drugPrice <", value, "drugprice");
            return (Criteria) this;
        }

        public Criteria andDrugpriceLessThanOrEqualTo(Double value) {
            addCriterion("drugPrice <=", value, "drugprice");
            return (Criteria) this;
        }

        public Criteria andDrugpriceIn(List<Double> values) {
            addCriterion("drugPrice in", values, "drugprice");
            return (Criteria) this;
        }

        public Criteria andDrugpriceNotIn(List<Double> values) {
            addCriterion("drugPrice not in", values, "drugprice");
            return (Criteria) this;
        }

        public Criteria andDrugpriceBetween(Double value1, Double value2) {
            addCriterion("drugPrice between", value1, value2, "drugprice");
            return (Criteria) this;
        }

        public Criteria andDrugpriceNotBetween(Double value1, Double value2) {
            addCriterion("drugPrice not between", value1, value2, "drugprice");
            return (Criteria) this;
        }

        public Criteria andCidIsNull() {
            addCriterion("cid is null");
            return (Criteria) this;
        }

        public Criteria andCidIsNotNull() {
            addCriterion("cid is not null");
            return (Criteria) this;
        }

        public Criteria andCidEqualTo(Integer value) {
            addCriterion("cid =", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidNotEqualTo(Integer value) {
            addCriterion("cid <>", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidGreaterThan(Integer value) {
            addCriterion("cid >", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidGreaterThanOrEqualTo(Integer value) {
            addCriterion("cid >=", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidLessThan(Integer value) {
            addCriterion("cid <", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidLessThanOrEqualTo(Integer value) {
            addCriterion("cid <=", value, "cid");
            return (Criteria) this;
        }

        public Criteria andCidIn(List<Integer> values) {
            addCriterion("cid in", values, "cid");
            return (Criteria) this;
        }

        public Criteria andCidNotIn(List<Integer> values) {
            addCriterion("cid not in", values, "cid");
            return (Criteria) this;
        }

        public Criteria andCidBetween(Integer value1, Integer value2) {
            addCriterion("cid between", value1, value2, "cid");
            return (Criteria) this;
        }

        public Criteria andCidNotBetween(Integer value1, Integer value2) {
            addCriterion("cid not between", value1, value2, "cid");
            return (Criteria) this;
        }

        public Criteria andProductiondateIsNull() {
            addCriterion("productionDate is null");
            return (Criteria) this;
        }

        public Criteria andProductiondateIsNotNull() {
            addCriterion("productionDate is not null");
            return (Criteria) this;
        }

        public Criteria andProductiondateEqualTo(String value) {
            addCriterion("productionDate =", value, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateNotEqualTo(String value) {
            addCriterion("productionDate <>", value, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateGreaterThan(String value) {
            addCriterion("productionDate >", value, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateGreaterThanOrEqualTo(String value) {
            addCriterion("productionDate >=", value, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateLessThan(String value) {
            addCriterion("productionDate <", value, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateLessThanOrEqualTo(String value) {
            addCriterion("productionDate <=", value, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateLike(String value) {
            addCriterion("productionDate like", value, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateNotLike(String value) {
            addCriterion("productionDate not like", value, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateIn(List<String> values) {
            addCriterion("productionDate in", values, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateNotIn(List<String> values) {
            addCriterion("productionDate not in", values, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateBetween(String value1, String value2) {
            addCriterion("productionDate between", value1, value2, "productiondate");
            return (Criteria) this;
        }

        public Criteria andProductiondateNotBetween(String value1, String value2) {
            addCriterion("productionDate not between", value1, value2, "productiondate");
            return (Criteria) this;
        }

        public Criteria andShelflifeIsNull() {
            addCriterion("shelfLife is null");
            return (Criteria) this;
        }

        public Criteria andShelflifeIsNotNull() {
            addCriterion("shelfLife is not null");
            return (Criteria) this;
        }

        public Criteria andShelflifeEqualTo(String value) {
            addCriterion("shelfLife =", value, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeNotEqualTo(String value) {
            addCriterion("shelfLife <>", value, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeGreaterThan(String value) {
            addCriterion("shelfLife >", value, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeGreaterThanOrEqualTo(String value) {
            addCriterion("shelfLife >=", value, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeLessThan(String value) {
            addCriterion("shelfLife <", value, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeLessThanOrEqualTo(String value) {
            addCriterion("shelfLife <=", value, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeLike(String value) {
            addCriterion("shelfLife like", value, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeNotLike(String value) {
            addCriterion("shelfLife not like", value, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeIn(List<String> values) {
            addCriterion("shelfLife in", values, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeNotIn(List<String> values) {
            addCriterion("shelfLife not in", values, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeBetween(String value1, String value2) {
            addCriterion("shelfLife between", value1, value2, "shelflife");
            return (Criteria) this;
        }

        public Criteria andShelflifeNotBetween(String value1, String value2) {
            addCriterion("shelfLife not between", value1, value2, "shelflife");
            return (Criteria) this;
        }

        public Criteria andNoteIsNull() {
            addCriterion("note is null");
            return (Criteria) this;
        }

        public Criteria andNoteIsNotNull() {
            addCriterion("note is not null");
            return (Criteria) this;
        }

        public Criteria andNoteEqualTo(String value) {
            addCriterion("note =", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotEqualTo(String value) {
            addCriterion("note <>", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteGreaterThan(String value) {
            addCriterion("note >", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteGreaterThanOrEqualTo(String value) {
            addCriterion("note >=", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteLessThan(String value) {
            addCriterion("note <", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteLessThanOrEqualTo(String value) {
            addCriterion("note <=", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteLike(String value) {
            addCriterion("note like", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotLike(String value) {
            addCriterion("note not like", value, "note");
            return (Criteria) this;
        }

        public Criteria andNoteIn(List<String> values) {
            addCriterion("note in", values, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotIn(List<String> values) {
            addCriterion("note not in", values, "note");
            return (Criteria) this;
        }

        public Criteria andNoteBetween(String value1, String value2) {
            addCriterion("note between", value1, value2, "note");
            return (Criteria) this;
        }

        public Criteria andNoteNotBetween(String value1, String value2) {
            addCriterion("note not between", value1, value2, "note");
            return (Criteria) this;
        }

        public Criteria andDstatusIsNull() {
            addCriterion("dstatus is null");
            return (Criteria) this;
        }

        public Criteria andDstatusIsNotNull() {
            addCriterion("dstatus is not null");
            return (Criteria) this;
        }

        public Criteria andDstatusEqualTo(Integer value) {
            addCriterion("dstatus =", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusNotEqualTo(Integer value) {
            addCriterion("dstatus <>", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusGreaterThan(Integer value) {
            addCriterion("dstatus >", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("dstatus >=", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusLessThan(Integer value) {
            addCriterion("dstatus <", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusLessThanOrEqualTo(Integer value) {
            addCriterion("dstatus <=", value, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusIn(List<Integer> values) {
            addCriterion("dstatus in", values, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusNotIn(List<Integer> values) {
            addCriterion("dstatus not in", values, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusBetween(Integer value1, Integer value2) {
            addCriterion("dstatus between", value1, value2, "dstatus");
            return (Criteria) this;
        }

        public Criteria andDstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("dstatus not between", value1, value2, "dstatus");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}