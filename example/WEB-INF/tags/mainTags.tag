<%@attribute name="tagClass" type="java.lang.String" required="false" %>
<%@attribute name="tagClassLi" type="java.lang.String" required="false" %>
<%@attribute name="useSprite" type="java.lang.Boolean" required="false" %>
<%@attribute name="unansweredTagLinks" type="java.lang.Boolean" required="false"%>
<%@attribute name="currentQuestion" type="org.mamute.model.Question" required="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${empty unansweredTagLinks}">
	<c:set value="${false}" var="unansweredTagLinks" />
</c:if>

<c:if test="${unansweredTagLinks}">
	<c:set value="?semRespostas=true" var="append" />
</c:if>

<c:if test="${not unansweredTagLinks}">
	<c:set value="/" var="append" />
</c:if>

<ol class="main-tags ${tagClass}">
	<li>
		<a class="${(tag.name == 'java' || currentQuestion.mostImportantTag.name == 'java') && useSprite ? 'main-tags-current' : ''} ${tagClassLi} ${useSprite? 'main-tags-sprite main-tags-java' : '' }" href="<c:url value="/tag/java${append}" />">
			java
		</a>
	</li>
	<li>
		<a class="${(tag.name == 'android' || currentQuestion.mostImportantTag.name == 'android') && useSprite ? 'main-tags-current' : ''} ${tagClassLi} ${useSprite? 'main-tags-sprite main-tags-android' : '' }" href="<c:url value="/tag/android${append}" />">
			android
		</a>
	</li>
	<li>
		<a class="${(tag.name == 'c#' || currentQuestion.mostImportantTag.name == 'c#') && useSprite ? 'main-tags-current' : ''} ${tagClassLi} ${useSprite? 'main-tags-sprite main-tags-c' : '' }" href="<c:url value="/tag/c%23${append}" />">
			c#
		</a>
	</li>
	<li>
		<a class="${(tag.name == '.net' || currentQuestion.mostImportantTag.name == '.net') && useSprite ? 'main-tags-current' : ''} ${tagClassLi} ${useSprite? 'main-tags-sprite main-tags-net' : '' }" href="<c:url value="/tag/.net${append}" />">
			.net
		</a>
	</li>
	<li>
		<a class="${(tag.name == 'javascript' || currentQuestion.mostImportantTag.name == 'javascript') && useSprite ? 'main-tags-current' : ''} ${tagClassLi} ${useSprite? 'main-tags-sprite main-tags-javascript' : '' }" href="<c:url value="/tag/javascript${append}" />">
			javascript
		</a>
	</li>
	<li>	
		<a class="${(tag.name == 'php' || currentQuestion.mostImportantTag.name == 'php') && useSprite ? 'main-tags-current' : ''} ${tagClassLi} ${useSprite? 'main-tags-sprite main-tags-php' : '' }" href="<c:url value="/tag/php${append}" />">
			php
		</a>
	</li>
	<li>
		<a class="${(tag.name == 'jquery' || currentQuestion.mostImportantTag.name == 'jquery') && useSprite ? 'main-tags-current' : ''} ${tagClassLi} ${useSprite? 'main-tags-sprite main-tags-jquery' : '' }" href="<c:url value="/tag/jquery${append}" />">
			jquery
		</a>
	</li>
	<li>
		<a class="${(tag.name == 'html' || currentQuestion.mostImportantTag.name == 'html') && useSprite ? 'main-tags-current' : ''} ${tagClassLi} ${useSprite? 'main-tags-sprite main-tags-html' : '' }" href="<c:url value="/tag/html${append}" />">
			html
		</a>
	</li>
	<li>
		<a class="${(tag.name == 'sql' || currentQuestion.mostImportantTag.name == 'sql') && useSprite ? 'main-tags-current' : ''} ${tagClassLi} ${useSprite? 'main-tags-sprite main-tags-sql' : '' }" href="<c:url value="/tag/sql${append}"/>">
			sql
		</a>
	</li>
</ol>
