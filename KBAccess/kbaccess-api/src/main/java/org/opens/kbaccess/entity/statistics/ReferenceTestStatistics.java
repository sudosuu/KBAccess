/*
 * KBAccess - Collaborative database of accessibility examples
 * Copyright (C) 2012-2016  Open-S Company
 *
 * This file is part of KBAccess.
 *
 * KBAccess is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Contact us by mail: open-s AT open-s DOT com
 */
package org.opens.kbaccess.entity.statistics;

/**
 *
 * @author blebail
 */
public interface ReferenceTestStatistics {
    /**
    *
    * @return The id of the reference test in database
    */
    Long getId();

    /**
    *
    * @param id The id of the reference test in database
    */
    void setId(Long id);

    /**
    *
    * @return The internationalization code of the entity
    */
    String getCode();

    /**
    *
    * @param code The internationalization code of the entity
    */
    void setCode(String code);

    /**
    *
    * @return The label of the reference test in database
    */
    String getLabel();

    /**
    *
    * @param label The label of the reference test in database
    */
    void setLabel(String label);

    /**
    *
    * @return The code of the reference which the reference test belongs to, in database
    */
    String getReferenceCode();

    /**
    *
    * @param referenceCode The code of the reference which the reference test belongs to, in database
    */
    void setReferenceCode(String referenceCode);

    /**
    *
    * @return The id of the reference which the reference test belongs to, in database
    */
    Long getReferenceId();

    /**
    *
    * @param referenceId The code of the reference which the reference test belongs to, in database
    */
    void setReferenceId(Long referenceId);

     /**
    *
    * @return The label of the reference which the reference test belongs to, in database
    */
    String getReferenceLabel();

    /**
    *
    * @param referenceLabel The label of the reference which the reference test belongs to, in database
    */
    void setReferenceLabel(String referenceLabel);

    /**
    *
    * @return The number of testcases relating to this referenceTest
    */
    Long getTestcaseCount();

    /**
    *
    * @param testcaseCount The number of testcases relating to this referenceTest
    */
    void setTestcaseCount(Long testcaseCount);
}
