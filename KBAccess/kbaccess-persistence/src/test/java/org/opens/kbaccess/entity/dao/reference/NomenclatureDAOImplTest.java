/*
 * URLManager - URL Indexer
 * Copyright (C) 2008-2012  Open-S Company
 *
 * This file is part of URLManager.
 *
 * URLManager is free software: you can redistribute it and/or modify
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
package org.opens.kbaccess.entity.dao.reference;

import java.util.Arrays;
import java.util.Collection;
import org.opens.kbaccess.entity.reference.Nomenclature;
import org.opens.kbaccess.entity.reference.NomenclatureImpl;
import org.opens.kbaccess.utils.AbstractDaoTestCase;

/**
 *
 * @author bcareil
 */
public class NomenclatureDAOImplTest extends AbstractDaoTestCase {
    
    public NomenclatureDAOImplTest(String testName) {
        super(testName, "src/test/resources/datasets/dataset.xml");
    }
    
    @Override
    protected void setUp() throws Exception {
        super.setUp();
    }
    
    @Override
    protected void tearDown() throws Exception {
        super.tearDown();
    }
    
    private NomenclatureDAO getBean() {
        return (NomenclatureDAO) springBeanFactory.getBean("nomenclatureDAO");
    }

    /**
     * Test of getEntityClass method, of class NomenclatureDAOImpl.
     */
    public void testGetEntityClass() {
        System.out.println("getEntityClass");
        NomenclatureDAOImpl instance = new NomenclatureDAOImpl();
        Class expResult = NomenclatureImpl.class;
        Class result = instance.getEntityClass();
        assertEquals(expResult, result);
    }

    /**
     * Test of findAllByCode method, of class NomenclatureDAOImpl.
     */
    public void testFindAllByCode() {
        System.out.println("findAllByCode : [nuc]");
        /* */
        String code = "nom01";
        /* */        
        NomenclatureDAO instance = getBean();
        /* */
        Collection<Nomenclature> result = instance.findAllByCode(code);
        /* */
        assertNotNull(result);
        assertEquals(1, result.size());
        assertEquals(Arrays.asList(1L), asIdList(result));
        // TODO error case
    }

    /**
     * Test of findByCode method, of class NomenclatureDAOImpl.
     */
    public void testFindByCode() {
        System.out.println("findByCode : [nuc]");
        /* */
        String code = "nom01";
        /* */        
        NomenclatureDAO instance = getBean();
        /* */
        Nomenclature result = instance.findByCode(code);
        /* */
        assertNotNull(result);
        assertEquals(Long.valueOf(1L), result.getId());
        // TODO error case
    }
}