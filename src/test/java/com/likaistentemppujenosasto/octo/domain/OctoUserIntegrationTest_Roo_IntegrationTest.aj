// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.likaistentemppujenosasto.octo.domain;

import com.likaistentemppujenosasto.octo.domain.OctoUser;
import com.likaistentemppujenosasto.octo.domain.OctoUserDataOnDemand;
import com.likaistentemppujenosasto.octo.domain.OctoUserIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect OctoUserIntegrationTest_Roo_IntegrationTest {
    
    declare @type: OctoUserIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: OctoUserIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: OctoUserIntegrationTest: @Transactional;
    
    @Autowired
    OctoUserDataOnDemand OctoUserIntegrationTest.dod;
    
    @Test
    public void OctoUserIntegrationTest.testCountOctoUsers() {
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to initialize correctly", dod.getRandomOctoUser());
        long count = OctoUser.countOctoUsers();
        Assert.assertTrue("Counter for 'OctoUser' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void OctoUserIntegrationTest.testFindOctoUser() {
        OctoUser obj = dod.getRandomOctoUser();
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to provide an identifier", id);
        obj = OctoUser.findOctoUser(id);
        Assert.assertNotNull("Find method for 'OctoUser' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'OctoUser' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void OctoUserIntegrationTest.testFindAllOctoUsers() {
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to initialize correctly", dod.getRandomOctoUser());
        long count = OctoUser.countOctoUsers();
        Assert.assertTrue("Too expensive to perform a find all test for 'OctoUser', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<OctoUser> result = OctoUser.findAllOctoUsers();
        Assert.assertNotNull("Find all method for 'OctoUser' illegally returned null", result);
        Assert.assertTrue("Find all method for 'OctoUser' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void OctoUserIntegrationTest.testFindOctoUserEntries() {
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to initialize correctly", dod.getRandomOctoUser());
        long count = OctoUser.countOctoUsers();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<OctoUser> result = OctoUser.findOctoUserEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'OctoUser' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'OctoUser' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void OctoUserIntegrationTest.testFlush() {
        OctoUser obj = dod.getRandomOctoUser();
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to provide an identifier", id);
        obj = OctoUser.findOctoUser(id);
        Assert.assertNotNull("Find method for 'OctoUser' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyOctoUser(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'OctoUser' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void OctoUserIntegrationTest.testMergeUpdate() {
        OctoUser obj = dod.getRandomOctoUser();
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to provide an identifier", id);
        obj = OctoUser.findOctoUser(id);
        boolean modified =  dod.modifyOctoUser(obj);
        Integer currentVersion = obj.getVersion();
        OctoUser merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'OctoUser' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void OctoUserIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to initialize correctly", dod.getRandomOctoUser());
        OctoUser obj = dod.getNewTransientOctoUser(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'OctoUser' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'OctoUser' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void OctoUserIntegrationTest.testRemove() {
        OctoUser obj = dod.getRandomOctoUser();
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'OctoUser' failed to provide an identifier", id);
        obj = OctoUser.findOctoUser(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'OctoUser' with identifier '" + id + "'", OctoUser.findOctoUser(id));
    }
    
}